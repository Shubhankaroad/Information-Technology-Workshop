NOVICE_MODE(){
clear
	echo -e "          \e[1;96mTEXT PROCESSING COMMANDS     \e[0m                    "
	echo "                                                         "
	echo "1-- Search a file for a pattern                         "
	echo "2-- Count lines,words,and characters in specified files "
	echo "3-- Display line differences between two files          "
	echo "4-- Quit --Return to Main Menu                          "
	echo "                                                         "
	echo -e "\e[1;32mEnter your choice: \e[0m "
read n; 
clear;
case $n in
	1)ls ;
	 echo -e "\e[1;32mEnter the name of the file to be searched for a particular pattern: \e[0m";
	 read r;
	 echo -e "\e[1;32mEnter a pattern: \e[0m";
	 read d;
	 grep -w "$d" $r ;
	 sleep 2s;	
	;;
	2) ls;
	echo -e "\e[1;32mEnter the name of the file:\e[0m";
	read r;
	echo -e "\e[1;32mOutput will be displayed in the order lines, words, characters and file name\e[0m";  
	wc $r;
	sleep 2s;
	;;
	3) ls ;
	echo -e "\e[1;32mFirst file name: \e[0m";
	read r;
	echo -e "\e[1;32mSecond file name: \e[0m";
	read d;
	diff $r $d;
	sleep 2s;
	;;
	4) bash ./myhelp.sh;
	;;	
	*) echo -e "\e[1;31mPlease enter a valid choice \e[0m";
	sleep 1s;
	NOVICE_MODE ;
	;;
esac
}

EXPERT_MODE(){
clear
	echo -e "          \e[1;96mTEXT PROCESSING COMMANDS   \e[0m                     "
	echo "                                                         "
	echo "1-- Search a file for a pattern                         "
	echo "2-- Count lines,words,and characters in specified files "
	echo "3-- Display line differences between two files          "
	echo "4-- Exit Program                                 "
	echo "                                                         "
	echo -e "\e[1;32mEnter your choice: \e[0m "
read n; 
clear;
case $n in
	1)ls ;
	 echo -e "\e[1;32mEnter the name of the file to be searched for a particular pattern: \e[0m";
	 read r;
	 echo -e "\e[1;32mEnter a pattern: \e[0m";
	 read d;
	 grep -w "$d" $r ;
	 sleep 2s;	
	;;
	2) ls;
	echo -e "\e[1;32mEnter the name of the file:\e[0m";
	read r;
	echo -e "\e[1;32mOutput will be displayed in the order lines, words, characters and file name\e[0m";  
	wc $r;
	sleep 2s;
	;;
	3) ls ;
	echo -e "\e[1;32mFirst file name: \e[0m";
	read r;
	echo -e "\e[1;32mSecond file name: \e[0m";
	read d;
	diff $r $d;
	sleep 2s;
	;;
	4) clear;
	exit;
	;;	
	*) echo -e "\e[1;31mPlease enter a valid choice \e[0m";
	sleep 1s;
	EXPERT_MODE ;
	;;
esac
}


if [[ $# -eq 0 ]]; then 
	NOVICE_MODE 
else EXPERT_MODE 
fi


