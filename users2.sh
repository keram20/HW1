#!/bin/bash

while getopts ":h" opt;
    do
      	case $opt
        in
            h) echo "if you need help ask your peer or Google"; exit 0;;
            ?) echo "value is not valid"; exit 2;;
        esac
 done

#awk '{print $1,$2}' users.txt 

user=$( awk '{print $1}'  users.txt)
ID=$( awk '{print $2}' users.txt)

#pocet=(wc -l users.txt)

#for i in pocet;
	sudo useradd -u $ID $user
#	usermod -g $ID $user
#        id -gn $user
	sudo passwd -d $user; 
	sudo echo $user"123" | passwd  $user --stdin; 
#done

