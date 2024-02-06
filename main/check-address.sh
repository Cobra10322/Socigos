
check=`ls | grep "location"`
if [ "$check" ]; then
   figlet -f digital "FOUNDED ADDRESS..."
   #source alive-progress/bin/activate
   python /home/osint/Desktop/Xdesktop/lab/tools/instaloader/alive-progress-2.py
   #deactivate
   #read B
   clear
   #terminator --geometry 665x191
else   
   figlet -f digital "NOT FOUNDED ADDRESS..."
   #source alive-progress/bin/activate
   #python alive-progress-2.py
   #deactivate
   #sleep 2
   read E
   #clear
   #sleep 1
   #bash /home/osint/Desktop/Xdesktop/lab/tools/instaloader/check-address.sh
fi
