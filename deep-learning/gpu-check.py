#!/usr/bin/env python3

from tensorflow.python.client import device_lib
print(device_lib.list_local_devices())

import tensorflow as tf
tf.test.is_gpu_available()

from keras import backend as K
K.tensorflow_backend._get_available_gpus()

import torch
torch.cuda.is_available()

print(torch.__version__)

# Check if Pytorch Works
device = torch.device("cuda:0")
torch.zeros(4,3, device=device)

from fastai.test_utils import *
show_install(True)
