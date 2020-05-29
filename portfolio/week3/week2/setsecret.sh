#1/bin/bash
#Getting the folder name from the user
read -p "Enter the name of the folder:" folder
#Creating the directory
mkdir "$folder"
#Getting the password from the user in hidden mode
read -sp "Enter password :" password
#Storing the hashed password
echo $password | sha256sum > $folder/secret.txt
exit 0