from fastai.metrics import *
import telegram
import os
from fastai import *
from fastai.torch_core import *
from fastai.vision import *
from fastai.metrics import *

class TelegramCallback(Callback):
    """
    How to get chat ID:
    https://api.telegram.org/bot<TOKEN>/getUpdates
    https://api.telegram.org/bot790854599:AAEE-3k-yo6Y3eOgQEeu9d32ZiVZq_7sV4o/getUpdates
    https://stackoverflow.com/questions/32423837/telegram-bot-how-to-get-a-group-chat-id

    How to get TOKEN
    https://www.siteguarding.com/en/how-to-get-telegram-bot-api-token
    """

    def __init__(self, imsize, bs):
        self.chat_id = -386096827
        self.telegram_key = '790854599:AAEE-3k-yo6Y3eOgQEeu9d32ZiVZq_7sV4o'
        self.bot = telegram.Bot(token=self.telegram_key)
        self.bs = bs
        self.imsize = imsize

    def on_train_begin(self,  **kwargs):
        message = '### Training Start: bs {} im_siz {} ###'.format(self.bs, self.imsize)
        self.bot.send_message(chat_id=self.chat_id, text=message)

    def on_epoch_end(self, last_metrics: MetricsList, **kwargs):
        message = 'epoch: {}, dice: {:.4f}'.format(kwargs['epoch'], last_metrics[1])
        self.bot.send_message(chat_id=self.chat_id, text=message)

    def on_train_end(self, **kwargs):
        message = '### Training End: bs {} im_siz {} ###'.format(self.bs, self.imsize)
        self.bot.send_message(chat_id=self.chat_id, text=message)
