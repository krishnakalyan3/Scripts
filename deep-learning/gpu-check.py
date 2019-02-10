#!/usr/bin/env python3

from tensorflow.python.client import device_lib
print(device_lib.list_local_devices())

from keras import backend as K
K.tensorflow_backend._get_available_gpus()

import torch
torch.cuda.is_available()

# https://github.com/pytorch/pytorch/pull/2016
