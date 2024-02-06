import time, os

os.listdir()

list_file = os.listdir()

for namafile in list_file:
    if namafile.endswith(".jpg"):
     os.system('clear')
     time.sleep(1)
     print(namafile)
     f = os.system('exiftool ' + (namafile) + ' |' + ' lolcat')
     time.sleep(2)
