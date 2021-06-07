NOVICE_MODE(){
clear
	echo -e "         \e[1;96mSYSTEM STATUS COMMANDS          \e[0m                 "
	echo "                                                        "
	echo "1-- Display the current date and time                "
	echo "2-- Current disk usage                               "
	echo "3-- List current local and environmental             "
	echo "4-- Display process status information               "
	echo "5-- Quit -- Return to Main Menu                      "
	echo "                                                     "
	echo -e "\e[1;32mEnter your choice:       \e[0m               "

read n 
clear
case $n in
	1) date 
	sleep 2s;	
	;;
	2) df -h
	sleep 2s;
	;;
	3) printenv;
	sleep 2s;
	;;
	4) ps -e;
	sleep 2s;
	;;	
	5) bash ./myhelp.sh;
	;;
	*) echo -e "\e[1;31mPlease enter a valid choice\e[0m"
	sleep 1s;
	NOVICE_MODE ;
	;;
esac
}

EXPERT_MODE(){
clear
	echo -e "         \e[1;96mSYSTEM STATUS COMMANDS          \e[0m                 "
	echo "                                                        "
	echo "1-- Display the current date and time                "
	echo "2-- Current disk usage                               "
	echo "3-- List current local and environmental             "
	echo "4-- Display process status information               "
	echo "5-- Exit program                    "
	echo "                                                     "
	echo -e "\e[1;32mEnter your choice:       \e[0m               "

read n 
clear
case $n in
	1) date 
	sleep 2s;	
	;;
	2) df -h
	sleep 2s;
	;;
	3) printenv;
	sleep 2s;
	;;
	4) ps -e;
	sleep 2s;
	;;	
	5) clear;
	exit;
	;;
	*) echo -e "\e[1;31mPlease enter a valid choice\e[0m"
	sleep 1s;
	EXPERT_MODE ;
	;;
esac
}
if [[ $# -eq 0 ]]; then 
	NOVICE_MODE 
else EXPERT_MODE 
fi

