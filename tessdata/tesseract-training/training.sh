#!/bin/bash
# Constants
FONT_NAME="Tangaria-24X36TG Medium"
MAX_PAGES=2000
NUM_ITERATIONS=8000

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

# Extract the best trainned model
combine_tessdata -e ./tesseract/tessdata/eng.traineddata eng.lstm

# lstmeval - Evaluation program for LSTM-based networks
#lstmeval --model output/tangaria_checkpoint \
#--traineddata tesseract/tessdata/eng.traineddata \
#--eval_listfile train/eng.training_files.txt

# Fine tune the model
rm -rf output/*
OMP_THREAD_LIMIT=8 lstmtraining \
--continue_from eng.lstm \
--model_output output/tangaria \
--traineddata tesseract/tessdata/eng.traineddata \
--train_listfile ./train/eng.training_files.txt \
--max_iterations $NUM_ITERATIONS

# Combine the checkpoints and create the final model
lstmtraining --stop_training --continue_from output/tangaria_checkpoint --traineddata ./tesseract/tessdata/eng.traineddata \
--model_output output/tangaria.traineddata

echo "mv traineddata..."
mv -f ./output/tangaria.traineddata ./tangaria_eng.traineddata || {
    echo "error: not found traineddata..."
    exit 1
}
