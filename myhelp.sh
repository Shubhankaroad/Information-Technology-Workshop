UNIX_HELP_MENU(){
clear 
echo -e "               \e[1;96mUNIX HELP MAIN MENU \e[0m                  "
echo "                                                         "
echo "1-- File and Directory Management Commands           "
echo "2-- Text Processing Commands                         "
echo "3-- System Status Commands                           "
echo "4-- Exit                                             "
echo "                                                     "
echo -e "\e[1;32mEnter your choice (Enter only the index number of a particular choice) : \e[0m                "
read i;

case $i in
	1) bash ./file.sh
	;;
	2) bash ./text.sh
	;;
	3) bash ./system.sh
	;;
	4)echo -e "\e[1;32mBye\e[0m ";
	
	sleep 2s;
	exit;
	;;
	*) echo -e "\e[1;31mPlease enter a valid choice\e[0m"
	sleep 2s; 
	bash ./myhelp.sh	
	;;
esac
}

if [[ $1 == "help" ]]; then
	 bash ./help.sh 
elif [[ $1 == "file" ]]; then
     bash ./file.sh a
elif [[ $1 == "text" ]]; then
	bash ./text.sh a
elif [[ $1 == "status" ]]; then
	bash ./system.sh a
else UNIX_HELP_MENU ;
fi

	

