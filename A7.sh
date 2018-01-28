#!/bin/bash

#  /$$$$$$  /$$$$$$$$ /$$      /$$ /$$$$$$$   /$$$$$$  /$$    /$$
# /$$__  $$|_____ $$/| $$$    /$$$| $$__  $$ /$$$_  $$| $$   | $$
#| $$  \ $$     /$$/ | $$$$  /$$$$| $$  \ $$| $$$$\ $$| $$   | $$
#| $$$$$$$$    /$$/  | $$ $$/$$ $$| $$  | $$| $$ $$ $$|  $$ / $$/
#| $$__  $$   /$$/   | $$  $$$| $$| $$  | $$| $$\ $$$$ \  $$ $$/ 
#| $$  | $$  /$$/    | $$\  $ | $$| $$  | $$| $$ \ $$$  \  $$$/  
#| $$  | $$ /$$/     | $$ \/  | $$| $$$$$$$/|  $$$$$$/   \  $/   
#|__/  |__/|__/      |__/     |__/|_______/  \______/     \_/  
#			A 7 M D 0 V   S C R I P T S  2 0 1 8 (c)

echo " █████╗ ███████╗███╗   ███╗██████╗  ██████╗ ██╗   ██╗"
sleep 0.5s
echo "██╔══██╗╚════██║████╗ ████║██╔══██╗██╔═████╗██║   ██║"
sleep 0.5s
echo "███████║    ██╔╝██╔████╔██║██║  ██║██║██╔██║██║   ██║"
sleep 0.5s
echo "██╔══██║   ██╔╝ ██║╚██╔╝██║██║  ██║████╔╝██║╚██╗ ██╔╝"
sleep 0.5s
echo "██║  ██║   ██║  ██║ ╚═╝ ██║██████╔╝╚██████╔╝ ╚████╔╝ "
sleep 0.5s
echo "╚═╝  ╚═╝   ╚═╝  ╚═╝     ╚═╝╚═════╝  ╚═════╝   ╚═══╝  "
                    
echo " 	A 7 M D 0 V   S C R I P T S  2 0 1 8 (c) "
sleep 2s

echo "Welcome to A7's remote login script ! Please authenticate below:"


read -p 'Username: ' uservar
read -sp 'Password: ' passvar

echo Thank you $uservar we now have your login details...attempting to sign you in...

if [ $uservar == a7md0v ] && [ $passvar == loleasy ]; then
	echo "$(tput setaf 2)Welcome Ahmad ! $(tput setab 7) or whoever thought it was smart to find the password $(tput sgr 0)"

	title="Please choose a number"
	prompt="Pick an option:"
	options=("A" "B" "C")

	echo "$title"
	PS3="$prompt "
	select opt in "${options[@]}" "Quit"; do 

		case "$REPLY" in

		1 ) echo "You picked $opt which is option $REPLY";;
		2 ) echo "You picked $opt which is option $REPLY";;
		3 ) echo "You picked $opt which is option $REPLY";;

		$(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
		*) echo "Invalid option. Try another one.";continue;;

		esac
else
	echo "You are not authorized to sign in, sorry."
	exit 1

fi

done