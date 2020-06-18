#!/bin/bash
while 
read -p "please type the  URL of a file to download or type 'exit to quit :" url
do
if [ "$url" == "exit" ]; then 
echo "Goodbye!"
exit 0

fi
read -p " Type the location of where you would like to download the file to:" path
wget $url -p $path
done