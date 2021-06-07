NOVICE_MODE(){
clear
echo -e "     \e[1;96mFILE AND DIRECTORY MANAGEMENT COMMANDS   \e[0m            "
echo "                                                          "
echo "1-- Display the contents of file                          "
echo "2-- Remove a file                                         "
echo "3-- Copy a file                                           "
echo "4-- List a file                                           "
echo "5-- Size of a file                                        "
echo "6-- Quit--Return to main Menu                             "
echo "                                                          "
echo -e "\e[1;32mEnter your choice: \e[0m "
read f;
clear 
case $f in
	1)ls ;
	 echo -e "\e[1;32mEnter the name of the file whose content you want to see: \e[0m";
	 read r;
	 cat $r ; 
	 sleep 2s;	
	;;
	2) ls;
	echo -e "\e[1;32mEnter the name of the file to be removed: \e[0m";
	read r;
	if [[ $r == "file.sh" || $r == "myhelp.sh" || $r == "system.sh" || $r == "text.sh" ]]
	then 
	echo -e "\e[1;31mpermission denied\e[0m";
	else
	rm $r;
	sleep 1s;
	echo -e "\e[1;32mThe above fill is successfully removed. Now the folder contains: \e[0m";
	ls;
	fi
	sleep 2s;
	;;
	3) ls ;
	echo -e "\e[1;32mEnter the name of the file to be copied:\e[0m";
	read r;
	echo -e "\e[1;32mEnter the destination where the file is to be pasted / new name of the file: \e[0m";
	read d;
	cp $r $d;
	sleep 2s;
	;;
	4) ls ;
	echo -e "\e[1;32mEnter the name of the file (full/partial):\e[0m";
	read r;
	ls -l | grep $r;
	sleep 2s;
	;;
	5) ls ;
	echo -e "\e[1;32mEnter the name of the file whose size you want to know:\e[0m";
	read r;
	du -h $r;
	sleep 2s;
	;;
	6) bash ./myhelp.sh;
	;;
	*) echo -e "\e[1;31mPlease enter a valid choice\e[0m"
	sleep 1s;
	NOVICE_MODE ;
	;;
esac
}

EXPERT_MODE(){
clear
	echo -e "     \e[1;96mFILE AND DIRECTORY MANAGEMENT COMMANDS  \e[0m                "
	echo "                                                             "
	echo "1-- Display the contents of file                          "
	echo "2-- Remove a file                                         "
	echo "3-- Copy a file                                           "
	echo "4-- List a file                                           "
	echo "5-- Size of a file                                        "
	echo "6-- Exit Program                            "
	echo "                                                             "
	echo -e "\e[1;32mEnter your choice: \e[0m "
read f;
clear 
case $f in
	1)ls ;
	 echo -e "\e[1;32mEnter the name of the file whose content you want to see: \e[0m";
	 read r;
	 cat $r ; 
	 sleep 2s;	
	;;
	2) ls;
	echo -e "\e[1;32mEnter the name of the file to be removed: \e[0m";
	read r;
	if [[ $r == "file.sh" || $r == "myhelp.sh" || $r == "system.sh" || $r == "text.sh" ]]
	then 
	echo -e "\e[1;31mpermission denied\e[0m";
	else
	rm $r;
	sleep 1s;
	echo -e "\e[1;32mThe above fill is successfully removed. Now the folder contains: \e[0m";
	ls;
	fi
	sleep 2s;
	;;
	3) ls ;
	echo -e "\e[1;32mEnter the name of the file to be copied:\e[0m";
	read r;
	echo -e "\e[1;32mEnter the destination where the file is to be pasted / new name of the file: \e[0m";
	read d;
	cp $r $d;
	sleep 2s;
	;;
	4) ls ;
	echo -e "\e[1;32mEnter the name of the file (full/partial):\e[0m";
	read r;
	ls -l | grep $r;
	sleep 2s;
	;;
	5) ls ;
	echo -e "\e[1;32mEnter the name of the file whose size you want to know:\e[0m";
	read r;
	du -h $r;
	sleep 2s;
	;;
	6) exit; 
	clear;
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

