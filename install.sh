sudo bash install.sh

apt install viewnior
apt install figlet
apt install feh

pip3 install lolcat
pip3 install instaloader

python3 -m venv alive-progress
source alive-progress/bin/activate
pip3 install alive-progress
deactivate

git clone https://github.com/soxoj/maigret && cd maigret
python3 -m venv Maigret
source Maigret/bin/activate
pip3 install -r requirements.txt
deactivate
