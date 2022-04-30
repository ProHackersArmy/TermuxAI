#-----------------
# scripting start
banner(){
vid
echo -e "\e[40;38;5;82m     
_  _
|  \/  | _ _ __  _   _
| |\/| |/ _ \ '_ \| | | |
| |  | |  _/ | | | || |
||  ||\__|| ||\,|
                                               MonkeAI
                                       Developed by ParzivalHack
"

echo " "
menu(){
echo -e "$grn             ＞＞＞＞>>>＞$ylo [Options]$grn ＜<<<＜＜＜＜$rset"
echo " "
echo " "
echo -e "$red                        ➡$cyan [\e[91m1\e[91m] Chat with MonkeAI"
echo -e "$red                        ➡$cyan [\e[91m2\e[91m] About me"
echo -e "$red                        ➡$cyan [\e[91m3\e[91m] Update script "
echo -e "$red                        ➡$cyan [\e[91m4\e[91m] Check out my VPN"
echo -e "$red                        ➡$cyan [\e[91m5\e[91m] Report issues"
echo -e "$red                        ➡$cyan [\e[91m6\e[91m] Exit"
echo " "
echo " "
echo -e "$grn               >＞＞＞＞＞$ylo [SELECT]$grn ＜＜＜＜＜<$rset"
echo " "
echo -ne "\e[91m#SELECT OPTION\e[91m: "
menu(){
read optnz
if [ $optnz = "1" ];
then
assistant
elif [ $optnz = "2" ];
then
am start -a android.intent.action.VIEW -d https://msha.ke/tommasobona/ > /dev/null 2>&1
banner
menu
elif [ $optnz = "3" ];
update
banner
menu
sed -i 's/\r//' monkeAI.sh
elif [$optnz = "4"];
then
am start -a android.intent.action.VIEW -d https://www.whispervpn.company.site/ > /dev/null 2>&1
banner
menu
elif [ $optnz = "5" ];
then
am start -a android.intent.action.VIEW -d https://github.com/ParzivalHack/MonkeAI/issues > /dev/null 2>&1
banner
menu
elif [ $optnz = "6" ];
then
exit 1
else
echo "wrong"
exit
fi
}
echo " "
echo -e "\e[40;38;5;82m Hello sir, how can i help you? "
echo
echo -ne "\e[91m#Type here: "
read optnz
if [ $optnz = " hi " ];
then
echo "\e[40;38;5;82m Hello sir "
banner
assistant
elif [ $optnz = " open youtube " ];
then
am start -a android.intent.action.VIEW -d https://www.youtube.com/ > /dev/null 2>&1
banner
assistant
elif [ $optnz = " help " ];
then
echo "\e[40;38;5;82m WARNING: This is the Beta version of the MonkeAI Terminal Assistant. Feel free to report any bug you find. © 2022 Tommaso Bona. All rights reserved. RULES: Don't use caps and write one command per time. Type "help" to get this message. COMMANDS LIST: open youtube - open twitch - open google - open discord - how are you? - hi - help. "
banner
assistant
elif [ $optnz = " open google " ];
then
am start -a android.intent.action.VIEW -d https://www.google.com/ > /dev/null 2>&1
banner
assistant
elif [ $optnz = " open twitch " ];
then
am start -a android.intent.action.VIEW -d https://www.twitch.tv/ > /dev/null 2>&1
banner
assistant
elif [ $optnz = " open discord " ];
then
am start -a android.intent.action.VIEW -d https://www.discord.com/ > /dev/null 2>&1
banner
assistant
if [ $optnz = " how are you " ];
then
echo "\e[40;38;5;82m I'm great Sir, thanks for asking :D "
banner
assistant
else
banner
assistant
fi
}
update(){
if [ -d "$HOME/TermuxAI" ];
then
cd $HOME
rm -rf TermuxAI
elif [ -d "$HOME/TermuxAI" ];
then
cd $HOME
rm -rf TermuxAI
else
echo
exit 1
fi
cd $HOME
sleep 1
echo -e "         \e[91mUPDATE IS GOING ON, PLEASE BE PATIENT...!\e[0m"
echo
printf "                     \e[96m["
# While process is running...
while git clone https://github.com/ParzivalHack/TermuxAI 2> /dev/null; do 
    printf  "\e[91m▓▓▓▓▓▓▓▓▓▓▓▓▓\e[0m"
    sleep 1
done
printf "\e[91m]\e[0m"
echo
echo
echo
printf "\e[91m           UPDATED SUCCESSFULLY TO THE LATEST VERSION!\e[0m"
sleep 2.0
clear
cd $HOME
cd TermuxAI
bash TermuxAI.sh
}
}
banner
menu
