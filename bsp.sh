clear
figlet -f digital "No Root"
figlet -f digital "Facebook Search Username"
echo ""
read -p'Search Username : ' User
echo ""
firefox --private-window "https://www.facebook.com/public/$User"
