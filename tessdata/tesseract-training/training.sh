#!/bin/bash
# Constants
FONT_NAME="Tangaria-24X36TG Medium"
FONT_OUTPUT="tangaria"
MAX_PAGES=2000
NUM_ITERATIONS=10000

TESSTRAIN=1
RM_OUTPUT=1
LSTMEVAL=1

cd "$(dirname "$0")" || {
    echo "ERROR: Could not change directory..."
    exit 1
}

if ! [ -d ./output ]; then
  mkdir -p ./output
fi
if ! [ -d ./train ]; then
  mkdir -p ./train
fi

if [ $TESSTRAIN = 1 ]; then
# Remove the previosly generated training data
rm -rf train/*

# Generate training data
tesstrain.sh \
--fonts_dir fonts \
--fontlist "$FONT_NAME" \
--my_boxtiff_dir fonts_box_tiff \
--lang eng \
--linedata_only \
--langdata_dir ./tesseract/langdata_lstm \
--tessdata_dir ./tesseract/tessdata \
--save_box_tiff \
--maxpages $MAX_PAGES \
--output_dir train
fi

# Extract the best trainned model
combine_tessdata -e ./tesseract/tessdata/eng.traineddata eng.lstm

# Fine tune the model
if [ $RM_OUTPUT = 1 ]; then
rm -rf output/*
fi
OMP_THREAD_LIMIT=8 lstmtraining \
--continue_from eng.lstm \
--model_output output/"$FONT_OUTPUT" \
--traineddata tesseract/tessdata/eng.traineddata \
--train_listfile ./train/eng.training_files.txt \
--max_iterations $NUM_ITERATIONS

if [ $LSTMEVAL = 1 ]; then
# lstmeval - Evaluation program for LSTM-based networks
lstmeval --model output/"$FONT_OUTPUT"_checkpoint \
--traineddata tesseract/tessdata/eng.traineddata \
--eval_listfile train/eng.training_files.txt
fi

# Combine the checkpoints and create the final model
lstmtraining --stop_training --continue_from output/"$FONT_OUTPUT"_checkpoint \
--traineddata ./tesseract/tessdata/eng.traineddata \
--model_output output/"$FONT_OUTPUT".traineddata

echo "mv traineddata..."
mv -f ./output/"$FONT_OUTPUT".traineddata ./"$FONT_OUTPUT"_eng.traineddata || {
    echo "error: not found traineddata..."
    exit 1
}
