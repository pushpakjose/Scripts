#!/bin/bash
#Getting the password from the user in hidden mode
red="\e[31m"
read -sp "$(echo -e $red Enter password:)" password
filename1="secret.txt"
if [[ -e filename1 ]]; then
while IFS= read -r line; do
checksum=$line
done < $filename1
fi
if echo "$password" | sha256sum -c "$filename1"; then 

exit_status=$? 
#if [ "$exit_status" -eq "0" ]; then
while [ "$script" != "8" ] ; do

echo -e "\e[32m Access Granted \e[36m"
echo " 1. Create a folder "
echo " 2. Copy a folder "
echo " 3. Set a password"
echo " 4. Calculator.sh"
echo " 5. Create Week Folder"
echo " 6. Check Filenames"
echo " 7. Download a File"
echo -e -n '\e[0;0m' 
echo   "8. Exit"
echo -e -n '\e[0;0m' 
blue="\e[34m"
read -p "$(echo -e $blue Select an Option )" number
script=$number
#while [ $exit_status -ne 0 ]; do 
case $script in
 "1" )
./foldermaker.sh ;;
"2" )
./foldercopier.sh ;;
"3" )
./setPassword.sh 
echo "Password Changed"
echo "Good Bye" ;;
"4")
./calculator.sh ;;
"5" )
./megafoldermaker.sh 1 2  ;;
"6" )
./filenames.sh filenames.txt  ;;
"7" )
./downloader.sh ;;
"8" )
"./exit.sh" ;;
esac
done
echo -e "\e[32mGreen Access Denied  "
echo "Good Bye"
exit $exit_status
exit 0
else
echo -e "\e[32mGreen Access Denied  "
echo "Good Bye"
exit 1
fi