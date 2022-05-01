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
..:!JYYYJ?^^?JYYYJ!:.                                        
                                     .?55G577?JJYBGYJJ?7?PP557.                                     
   ..                          ..:..7PG7!!57JY7??YJ??75?7Y!!?G5!                         ..:.       
....                         .:::..5P7?JY77YYY?J?!!J??YYY!7JJ77PY                      ..:::.       
.                         ..:::.  7#J?!!7Y?!7JYYJJJJYYJ7~?J7~!?J#!                   .:::..         
                          .::.   JB?7Y?JJ75?YJJ?7777?JJY?Y7J?JY7JB7                  .:..           
                                @5!7Y?57Y?5??JJJ!YJ???Y?J75?Y7!G@^                                
                             ^7JG@@#GJ7YJ?7?J?7Y!!57?J?7?JJ7YG#@@PJ7^                             
                            &@@@@@@@@&#BBGG5YP5?GPJPPJ5GGBB#&@@@@@@@@&                            
                            !@@@@@@@@@@@@@@@@@@&@@@@@@@@@@@@@@@@@@@@@@@~                            
              ::.            Y@@@@@@@@@@@@@&##&@@@@@@@@@@@@@@@@@@@@@@@Y .::.                        
              ...             Y@@@@&5J777?Y5G#@@@@@@@@&BPY?777JP&@@@@Y   ...                        
                               7#@&~         :JP&&GJ:         ^&@B7                               
                                ?@@?     ^!~.    ::    .~7^     ?@@!                                
                                ?@@@P!.  :77:          .77:  .!P@@@!                                
   .                            7@@@@@#5?^.            . .^75#@@@@@!                                
..:::.                          7#&@@@@@@@&Y. JP?  ?PJ .Y&@@@@&&@@@!                      ...       
::..                         .. 7@@@@@@@@@?.  !B#PP&B7  .J&&&&@@@@@!                   ....         
..                         ...  7@@@@@@@@7      YY   .:.?&@@@@@@@~                  ..            
                           .    :&@@@@@@P               .. P@@@@@@#.                                
                                 7@@@@@@?                  ?@@@@@&!                                 
                                  !#@@@@Y                  Y@@@@B~                                  
                                   :Y#@@&~ .^!7JJYYYJ7!^. ~&@@#J.                                   
                                     :7P##Y!~^^:::::^^~Y##57.                                     
               .                        .J5?.       :7Y?~.             ..                         
                                           .!?J??????J?!.                                           
                                               .::::.
                                               MonkeAI
                                       Developed by ParzivalHack
"
echo ""
echo
echo -e "$red Hello Sir, how can i help you today? $rset"
echo " "
echo -ne "\e[34m#Say something to TermuxAI\e[34m: "
read optnz
if [ $optnz = "hi" ];
then
echo -e "$red Hello Sir, how can i help you today? $rset"
sleep 2
menu
bash TermuxAI.sh
elif [ $optnz = "help" ];
then
echo -e "$red Commands list: hi - credits - update - vpn - report - exit $rset"
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
