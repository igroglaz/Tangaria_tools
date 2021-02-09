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

# Update the machine
sudo apt-get update

# Install training dependencies
sudo apt-get install libicu-dev libpango1.0-dev libcairo2-dev -y
sudo apt install libtesseract-dev -y
sudo apt-get install libleptonica-dev -y

# Clone tesseract repo
git clone https://github.com/tesseract-ocr/tesseract.git

# Install tesseract
cd tesseract/ || exit 1
./autogen.sh
./configure
make
sudo make install
sudo ldconfig
make training
sudo make training-install

# Add path to .bashrc
echo  'export TESSDATA_PREFIX=/usr/local/share/tessdata' >> ~/.bashrc
source ~/.bashrc

# Testing tesseract installation
echo `tesseract --version | grep 'tesseract'`

# Download langdata_lstm
git clone https://github.com/tesseract-ocr/langdata_lstm.git

#Download the best english trained data to tessdata
cd ./tessdata/ || exit 1
wget --output-document=eng.traineddata https://github.com/tesseract-ocr/tessdata_best/raw/master/eng.traineddata
