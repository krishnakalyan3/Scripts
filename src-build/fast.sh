#¡/usr/bin/env bash

git clone https://github.com/fastai/fastai
cd fastai
tools/run-after-git-clone
conda env create -f environment.yml
source activate fastai

conda install -c pytorch pytorch cudatoolkit=10.0 -y
