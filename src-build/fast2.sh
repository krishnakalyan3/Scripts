#!/usr/bin/env bash

git clone https://github.com/fastai/fastai2
cd fastai2
conda env create -f environment.yml
source activate fastai2
pip install -e ".[dev]"
