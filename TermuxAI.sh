red="\e[34m"
rset="\e[34m"
grn="\e[34m"
ylo="\e[34m"
blue="\e[34m"
cyan="\e[34m"
pink="\e[34m"
menu(){
vid
echo -e "\e[34m     
     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@G555G@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@#7   ?&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@@@G^  :P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@@@@@J.  7#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@@@@@@B~  .5@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@@@@@@@@5.  ~B@@@@@@@@@@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@@@@@@@@5.  ~B@@@@@@@@@@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@@@@@@B~  .5@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@@@@@J.  7#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@@@G^  :P@@@@@@@&&&&&&&&&&&&&@@@@@@@@@@@
     @@@@@@@@@@@#7   ?&@@@@@@@@7 ......... ^&@@@@@@@@@@
     @@@@@@@@@@@G555G@@@@@@@@@@G55555555555P@@@@@@@@@@@
     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                          TermuxAI
                   Developed by ParzivalHack
"
echo ""
echo
echo -e "$red Hello Sir, how can i help you today? $rset"
echo " "
echo -ne "\e[34m#Say something to TermuxAI (type help for the commands list)\e[34m: "
read optnz
if [ $optnz = "hi" ];
then
echo -e "$red Hello Sir, how can i help you today? $rset"
sleep 2
menu
bash TermuxAI.sh
elif [ $optnz = "help" ];
then
echo -e "$red Commands list(Insert sentences without spaces. Example: howareyou): hi - credits - update - vpn - report - exit - howareyou - doyouhaveafamily - doyoupoop - favcolor$rset"
sleep 30
menu
bash TermuxAI.sh
elif [ $optnz = "howareyou" ];
then
echo -e "$red I'm doing great, thanks for asking Sir :) $rset"
sleep 2
menu
bash TermuxAI.sh
elif [ $optnz = "doyouhaveafamily" ];
then
echo -e "$red My only family is my creator and developer, ParzivalHack <3 $rset"
sleep 2
menu
bash TermuxAI.sh
elif [ $optnz = "doyoupoop" ];
then
echo -e "$red No Sir, i'm an Artificial Antelligence so i do not poop. $rset"
sleep 2
menu
bash TermuxAI.sh
elif [ $optnz = "favcolor" ];
then
echo -e "$red My favourite color is green but unfortunatly my developer coded me with a stupid light blue color :( $rset"
sleep 4
menu
bash TermuxAI.sh
elif [ $optnz = "hello" ];
then
echo -e "$red Hello Sir, how can i help you today? $rset"
sleep 2
menu
bash TermuxAI.sh
elif [ $optnz = "credits" ];
then
am start -a android.intent.action.VIEW -d https://msha.ke/tommasobona/ > /dev/null 2>&1
menu
bash TermuxAI.sh
elif [ $optnz = "update" ];
then
upd
elif [ $optnz = "vpn" ];
then
am start -a android.intent.action.VIEW -d https://www.whispervpn.company.site/ > /dev/null 2>&1
menu
bash TermuxAI.sh
elif [ $optnz = "report" ];
then
am start -a android.intent.action.VIEW -d https://github.com/ParzivalHack/TermuxAI/issues > /dev/null 2>&1
menu
bash TermuxAI.sh
elif [ $optnz = "exit" ];
then
exit 1
else
echo "wrong"
exit
fi
}
upd(){
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
echo -e "         \e[34mUPDATE IS GOING ON, PLEASE BE PATIENT...!\e[0m"
echo
printf "                     \e[34m["
# While process is running...
while git clone https://github.com/ParzivalHack/TermuxAI 2> /dev/null; do 
    printf  "\e[34m▓▓▓▓▓▓▓▓▓▓▓▓▓\e[0m"
    sleep 1
done
printf "\e[34m]\e[0m"
echo
echo
echo
printf "\e[34m           UPDATED SUCCESSFULLY TO THE LATEST VERSION!\e[0m"
sleep 2.0
clear
cd $HOME
cd TermuxAI
bash TermuxAI.sh
}
vid(){
FILE=$HOME/TermuxAI
if [ -f "$FILE" ]; then
pop
else
echo
fi
}
pop(){
clear
read p
if [ "$p" = "y" ];
then
am start -a android.intent.action.VIEW -d ERROR000 2>/dev/null
clear
menu
elif [ "$p" = "t" ];
then
clear
menu
elif [ "$p" = "z" ];
then
cd $HOM/TermuxAI
rm noob.noob
menu
else
menu
exit
fi
}
menu
