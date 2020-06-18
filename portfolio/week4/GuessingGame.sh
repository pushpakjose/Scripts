#!/bin/bash 

printError()
 {
     echo -e "\033[31mERROR:\033[0m $1"
 }
 getnumber()
{
    read -p  "$1:"
    while (( $REPLY<$2 || $REPLY>$3 )); do 
    printError "Input Must be between $2 and $3"
    read -p "$1: "
         done 
   while :
   do 
     if [ $REPLY = 42 ]; then 
         echo "Correct"
         exit 0 
                 elif [[ "$REPLY" -gt "42" ]]; then
               echo " Too High"
             read -p "$1: "
               else 
               echo "Too low"
               read -p "$1: "
                        fi
                        done
}
getnumber " Please type a number between 1 and 100" 1 100 