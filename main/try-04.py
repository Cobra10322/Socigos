import time, os

os.listdir()

list_file = os.listdir()

for namafile in list_file:
    if namafile.endswith(".txt"):
     #os.system('clear')
     time.sleep(1)
     print(namafile)
     #f = os.system('cat ' + (namafile) + ' |' + ' lolcat')
     f = os.system('cat ' + (namafile))
     #time.sleep(1)
     #os.system('typop '+ (namafile))
     #time.sleep(3)
     #os.system('typop no')
     #time.sleep(2)
