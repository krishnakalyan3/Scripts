#!/usr/bin/env python3

from tensorflow.python.client import device_lib
print(device_lib.list_local_devices())

from keras import backend as K
K.tensorflow_backend._get_available_gpus()

import torch
torch.cuda.is_available()

# Fast AI
fastai.utils.show_install

