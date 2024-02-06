clear
figlet -f digital "CYBER BLACKHAT INTELLIGENCE"
sleep 1
figlet -f digital "SOCMINT Instagram Activity"
echo ""
echo "Your Instagram Account For Login"
echo ""
read -p'Your Username : ' User
read -p'Your Password : ' Pass

echo
read -p'Continew or Exit [C/E] : ' Wch
if [ $Wch = c ]
then
sleep 1
echo ""
figlet -f digital "USERNAME"
echo ""
read -p'Target Osint : ' Profile

clear
sleep 1
figlet -f digital "SEARCHING TARGET"
source alive-progress/bin/activate
python main/alive-progress-3.py

typop notify/fingerlock.gif

instaloader $Profile -l $User -p $Pass -C -G --no-metadata-json | tee check.txt
check=`cat check.txt | grep "Logged"`

if [ "$check" ]; then
   echo "ACCESS GRANTED"
   typop notify/access_granted.gif
   read B
   typop no
else
   echo "ACCESS DENIDE"
   typop notify/access_denide.gif
   read B
   typop no
   exit
fi

rm -rf check.txt

figlet -f digital "Scanning Data Profile Target"
echo ""
ls | grep "$Profile"
sleep 1
echo ""
feh -g 373x303 $Profile 2>&1 &
sleep 1
figlet -f digital "Get Profile Target"
#cd $Profile
echo ""
sleep 2
figlet -f digital "Searching JPG"
echo ""
Pwd=`pwd`
python $Pwd/main/alive-progress-1.py
echo ""
ls $Profile | grep ".jpg"
echo ""
sleep 1
figlet -f digital "Searching Caption"
echo ""
Pwd=`pwd`
python $Pwd/main/alive-progress-1.py
echo ""
ls $Profile | grep "UTC.txt"
echo ""
sleep 1
figlet -f digital "Searching Comments"
echo ""
Pwd=`pwd`
python $Pwd/main/alive-progress-1.py
echo ""
ls $Profile | grep "comments.json"
echo ""
sleep 1
figlet -f digital "Searching tag Maps"
echo ""
Pwd=`pwd`
python $Pwd/main/alive-progress-1.py
echo ""
ls $Profile | grep "location"
sleep 2
echo ""
echo "Finish"
sleep 1

clear
sleep 1

Pwd=`pwd`
cp -r main/try-03.py $Pwd/$Profile/
cp -r main/alive-progress.py $Pwd/$Profile/
#cp -r main/check-address.sh $Pwd/$Profile/

cd $Profile
python try-03.py
rm try-03.py
clear
figlet -f digital "Checking..."
ls -al | lolcat -a

sleep 1
clear
sleep 1
clear
Pwd=`pwd`
python alive-progress.py
rm alive-progress.py
clear
sleep 1
Pwd=`pwd`
#terminator --geometry 504x200 -x bash check-address.sh
#rm check-address.sh
sleep 1
clear

deactivate
cd ..

figlet -f digital "Scanning for Same Username..."
sleep 1
figlet -f digital "Instagram"
cd maigret
source Maigret/bin/activate
Pwd=`pwd`
./maigret.py $Profile --site instagram | tee reports/$Profile-instagram.txt

sleep 1
echo ""
figlet -f digital "Facebook"
Pwd=`pwd`
./maigret.py $Profile --site facebook | tee reports/$Profile-facebook.txt

sleep 1
echo ""
figlet -f digital "Twitter"
Pwd=`pwd`
./maigret.py $Profile --site twitter | tee reports/$Profile-twitter.txt

cd ..
clear

sleep 1

figlet -f digital "Analysis Spesific"

figlet -f digital "Profile Target"
echo ""
ls | grep "$Profile"
sleep 2
echo ""

Pwd=`pwd`
cp -r main/try-04.py $Pwd/$Profile/

cd $Profile

sleep 2
figlet -f digital "JPG Data"
echo ""
ls | grep ".jpg"
sleep 2
echo ""
figlet -f digital "Caption Data"
echo ""
ls | grep "UTC.txt"
sleep 2
echo ""
figlet -f digital "Comments Data"
echo ""
ls | grep "comments.json"
sleep 2
echo ""
figlet -f digital "Tag Maps Data"
echo ""
ls | grep "location"
sleep 2
echo ""
figlet -f digital "Dump TXT Files"
sleep 2
echo ""
python try-04.py
rm try-04.py
sleep 2
echo ""
figlet -f digital "Account Detect Same Username"
echo ""
sleep 1

cd ..

figlet -f digital "Instagram"
echo ""
cat maigret/reports/$Profile-instagram.txt
rm maigret/reports/$Profile-instagram.txt
sleep 1
echo ""
figlet -f digital "Facebook"
echo ""
cat maigret/reports/$Profile-facebook.txt
rm maigret/reports/$Profile-facebook.txt
sleep 1
echo ""
figlet -f digital "Twitter"
echo ""
cat maigret/reports/$Profile-twitter.txt
rm maigret/reports/$Profile-twitter.txt
echo "Finish"
sleep 2


elif [ $Wch = n ]
then
       exit
fi
