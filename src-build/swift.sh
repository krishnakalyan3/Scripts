#!/usr/bin/env bash

sudo apt-get install clang libpython-dev libblocksruntime-dev
wget https://storage.googleapis.com/swift-tensorflow-artifacts/releases/v0.6/rc2/deduped/swift-tensorflow-RELEASE-0.6-cuda10.1-cudnn7-ubuntu18.04.tar.gz
tar -xvzf swift-tensorflow-RELEASE-0.6-cuda10.1-cudnn7-ubuntu18.04.tar.gz swift
mkdir swift
export PATH=$PATH:/home/ubuntu/swift/usr/bin

git clone https://github.com/google/swift-jupyter
python register.py --sys-prefix --swift-python-use-conda --use-conda-shared-libs   --swift-toolchain ~/swift
