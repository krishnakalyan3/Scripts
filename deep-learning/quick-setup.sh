#!/usr/bin/env bash

export IP=""

sudo apt-get -y update
sudo apt-get install nfs-common

conda install -c pytorch -c fastai fastai
python3 -c "import fastai.utils.collect_env; fastai.utils.collect_env.show_install(1)"

sudo mkdir gcp-mount
sudo mount 10.14.15.82:/r8_images gcp-mount
