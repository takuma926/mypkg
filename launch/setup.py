import os                  #追加。OSの機能のパッケージ
from glob import glob      #追加。グロブ（ワイルドカード）を扱う関数
・・・
    data_files=[
        ・・・
        (os.path.join('share', package_name, 'launch'), glob('launch/*.launch.py')),  #追加
    ],
