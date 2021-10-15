#!/usr/bin/env python3

from tensorflow.python.client import device_lib
print(device_lib.list_local_devices())

from keras import backend as K
K.tensorflow_backend._get_available_gpus()

import torch
torch.cuda.is_available()
print(torch.__version__)

import fastai.utils.collect_env; fastai.utils.collect_env.show_install(1)

# Check if Pytorch Works
device = torch.device("cuda0")
torch.zeros(4,3, device=device)


