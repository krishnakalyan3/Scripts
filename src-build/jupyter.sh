#!/usr/bin/env bash

sudo apt install npm -y
conda install -c conda-forge jupyterlab mamba_gator  jupyterlab-nvdashboard ipywidgets -y
conda install nb_conda_kernels

# Setup Jupyter
jupyter notebook --generate-config
echo "c.NotebookApp.allow_origin = '*'" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.ip = '0.0.0.0'" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.open_browser = False" >> ~/.jupyter/jupyter_notebook_config.py

# Choose password
jupyter notebook password

# pip install ipywidgets bokeh pynvml jupyterlab-nvdashboard
# jupyter nbconvert --to notebook --inplace  --ExecutePreprocessor.timeout=-1  --execute Imgsize.ipynb
