#!/bin/bash

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

#####sudo apt-get install tesseract-ocr

# Clone tesseract repo
git clone https://github.com/tesseract-ocr/tesseract.git

# Install tesseract
cd tesseract/ || exit 1

# Testing tesseract installation
echo `tesseract --version | grep 'tesseract'`

# Download langdata_lstm
git clone https://github.com/tesseract-ocr/langdata_lstm.git

#Download the best english trained data to tessdata
cd ./tessdata/ || exit 1
wget --output-document=eng.traineddata https://github.com/tesseract-ocr/tessdata_best/raw/master/eng.traineddata

echo "copying scripts: language-specific.sh, tesstrain_utils.sh, tesstrain.sh to /usr/bin"
###cd ../src/training/ || exit 1
cd ../../scripts/ || exit 1

sudo cp -f ./language-specific.sh /usr/bin
sudo cp -f ./tesstrain_utils.sh /usr/bin
sudo cp -f ./tesstrain.sh /usr/bin
