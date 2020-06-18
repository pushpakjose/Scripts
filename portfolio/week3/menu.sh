#!/bin/bash
#Getting the password from the user in hidden mode
read -sp "Enter password:" password
filename1="secret.txt"
if [[ -e filename1 ]]; then
while IFS= read -r line; do
checksum=$line
done < $filename1
fi
if echo "$password" | sha256sum -c "$filename1"; then 
exit_status=$?
if [ "$exit_status" -eq "0" ]; then
echo " 1. Create a folder "
echo " 2. Copy a folder "
echo " 3. Set a password"
read -p "Enter your choice " number
script=$number
case $script in
"1" )
"./foldermaker.sh" ;;
"2" )
"./foldercopier.sh" ;;
"3" )
"./setPassword.sh" 
echo "Password Changed"
echo "Good Bye";;
esac
fi
exit $exit_status
exit 0
else
echo "Access Denied"
echo "Good Bye"
exit 1
fi