#!/usr/bin/env bash

conda install -c conda-forge jupyterlab
sudo apt install npm
conda install -c conda-forge jupyterlab-nvdashboard -y

# Setup Jupyter
jupyter notebook --generate-config
echo "c.NotebookApp.allow_origin = '*'" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.ip = '0.0.0.0'" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.open_browser = False" >> ~/.jupyter/jupyter_notebook_config.py

# Choose password
jupyter notebook password
jupyter nbextension enable --py widgetsnbextension --sys-prefix

# pip install ipywidgets bokeh pynvml jupyterlab-nvdashboard
