#!/bin/bash

while getopts ":h" opt;
    do
      	case $opt
        in
            h) echo "Script will create user // take user from file"; exit 0;;
            ?) echo "value is not valid"; exit 2;;
        esac
 done

#awk '{print $1,$2}' users.txt 

user=$( awk '{print $1}'  users.txt)
ID=$( awk '{print $2}' users.txt)

cat /etc/passwd > pass_d.txt
FILE=pass_d.txt

isInFile=$(cat pass_d.txt | grep -c "$user")

if [ $isInFile -eq 0 ];then
        sudo useradd -u $ID $user
        echo "user $user created"
        usermod -g $ID $user
       id -gn $user
#	sudo passwd -d $user;
#	sudo echo $user"123" | passwd  $user --stdin;
else
    	echo " $user exist"
fi
