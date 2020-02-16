#!/usr/bin/env bash

# Anaconda Unix 3.7
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh -b
echo 'export PATH=/home/ubuntu/miniconda3/bin:$PATH' >> ~/.bashrc

# More libraries
# conda install anaconda -y 
# conda install conda
# conda install -c pytorch -c fastai fastai
