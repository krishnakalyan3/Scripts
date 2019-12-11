#!/usr/bin/env bash

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh -b
echo 'export PATH=/root/miniconda3/bin:$PATH' >> ~/.bashrc
source .bashrc

conda install -c pytorch -c fastai fastai
