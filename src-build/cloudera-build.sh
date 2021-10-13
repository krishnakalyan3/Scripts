#!/usr/bin/env bash

# Install Libs
yum install -y screen git vim

# Anaconda Unix 3.7
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh -b
echo export PATH=$PATH:$(pwd)/miniconda3/bin  >> ~/.bashrc
source .bashrc

# Install Jupyter La
conda install -c conda-forge jupyterlab -y
jupyter notebook --generate-config
echo "c.NotebookApp.allow_origin = '*'" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.ip = '0.0.0.0'" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.open_browser = False" >> ~/.jupyter/jupyter_notebook_config.py

# Passwd
jupyter notebook password
jupyter lab --allow-root

# More libraries
# conda install anaconda -y 
# conda install conda
# conda install -c pytorch -c fastai fastai
