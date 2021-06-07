clear
echo -e "			\e[1;96mWelcome to the UNIX project \e[0m 			"  ;
echo "										"
echo "To perform any task on this system all you have to do is to select your choice of options from given options. For selecting an option, you have to enter it's corresponding index." ;
echo "-> In File Menu you will find commands like ls, cat, cp etc." ;
echo "-> In System Status Menu you will find commands like ps, df, date, printenv" ;
echo "-> In Text Menu you will find commands like grep, diff, wc";
echo "									"
echo -e "\e[1;96mAuthor : Shubhankar Oad \e[0m" 
echo -e "\e[1;32mPress any key to go back to the main menu\e[0m";
read x;
echo -e "\n";
echo -e "\033[1;32mOpening main menu\033[0m";
sleep 2s;
bash ./myhelp.sh;

