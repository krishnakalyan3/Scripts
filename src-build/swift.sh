#!/usr/bin/env bash

# Swift Nightly Builds
# https://github.com/tensorflow/swift/blob/master/Installation.md#pre-built-packages

sudo apt-get install clang libpython-dev libblocksruntime-dev

# Cuda
wget https://storage.googleapis.com/swift-tensorflow-artifacts/releases/v0.6/rc2/deduped/swift-tensorflow-RELEASE-0.6-cuda10.1-cudnn7-ubuntu18.04.tar.gz
tar -xvzf swift-tensorflow-RELEASE-0.6-cuda10.1-cudnn7-ubuntu18.04.tar.gz swift

# CPU
wget https://storage.googleapis.com/swift-tensorflow-artifacts/releases/v0.8/rc1/swift-tensorflow-RELEASE-0.8-ubuntu18.04.tar.gz
tar -xvzf swift-tensorflow-RELEASE-0.8-ubuntu18.04.tar.gz

mkdir swift
mv usr/ swift

export PATH=$PATH:/home/ubuntu/swift/usr/bin

git clone https://github.com/google/swift-jupyter
cd swift-jupyter/
# 

python register.py --sys-prefix --swift-python-use-conda --use-conda-shared-libs   --swift-toolchain ~/swift
