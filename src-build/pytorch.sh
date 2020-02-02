#!/usr/bin/env bash

# Source
conda install numpy pyyaml mkl mkl-include setuptools cmake cffi typing
git clone --recursive https://github.com/pytorch/pytorch
cd pytorch
export CMAKE_PREFIX_PATH=${CONDA_PREFIX:-"$(dirname $(which conda))/../"}
MACOSX_DEPLOYMENT_TARGET=10.9 CC=clang CXX=clang++ python setup.py install

# Building Docs
cd docs
sudo pip3 install -r requirements.txt
make html


