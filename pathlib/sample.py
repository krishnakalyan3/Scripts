from pathlib import Path
from PIL import Image
import os
from shutil import copyfile


def create_dir(path):
    Path(path).mkdir(parents=True, exist_ok=True)

def subset(path, v2 = 'data-512-100-v3', samples=3):
    index = 0
    src = Path(path)
    sub_folders = ([x for x in src.iterdir() if x.is_dir()])

    files = [i.name for i in sub_folders[0].iterdir()][0:100]

    for i in sub_folders:
        dest_path = src.parent/v2/i.name
        create_dir(dest_path)

        for j in files:
            index += 1
            src = src/i/j
            des = dest_path/j

            print(src, des)
            copyfile(src, des)

            if index == samples:
                index = 0
                break
