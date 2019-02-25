from pathlib import Path
from PIL import Image
import os

def create_dir(path):
    Path(path).mkdir(parents=True, exist_ok=True)

def img_resize(src_img_path, dest_img_path, resize=512, ext='JPEG'):
    file_name = os.path.splitext(Path(src_img_path).name)[0] + '.jpeg'
    img = Image.open(src_img_path)
    img_resize = img.thumbnail([resize, resize], Image.ANTIALIAS)
    img.save(Path(dest_img_path, file_name), ext)

def deploy(path, v2 = 'data-512-v2'):
    src = Path(path)
    sub_folders = ([x for x in src.iterdir() if x.is_dir()])

    # Setup Folders
    # Get Images path and resize
    for i in sub_folders:
        print('Processing {}'.format(i.name))
        v2_dir_name = Path(src.parents[0], v2, i.name)
        create_dir(v2_dir_name)
        for child in i.iterdir():
            img_resize(child, v2_dir_name)

deploy('/home/krishna/seg/microaneurysms/data-v1')
