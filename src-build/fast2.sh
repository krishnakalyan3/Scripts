#!/usr/bin/env bash

conda install -y -c fastai -c pytorch fastai
git clone https://github.com/fastai/fastai2
cd fastai2
conda env create -f environment.yml
source activate fastai2
make fastai2
