#!/bin/bash

# pyenv update

cd ~/.pyenv
git fetch --all
git pull

pyenv install 3.6.7
pyenv global 3.6.7

pip install --upgrade pip

## pip install
pip install -r ~/ubuntu/requirements.txt

