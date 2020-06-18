#!/bin/bash 
#Getting the password from the user in hidden mode
read -sp "Enter password :" password
filename1="secret.txt"
if [[ -e filename1 ]]; then
while IFS= read -r line; do
checksum=$line
done < $filename1
fi
if echo "$password" | sha256sum -c "$filename1"; then 
echo " Access Granted"
exit 0
else
echo "Access Denied"
exit 1
fi