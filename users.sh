#!/bin/bash

#users=Marek Tomas Jakub Honza

#for i in $users; do
#for i in $( cat users.txt ); do 
#	useradd $i echo "user $i added successfully!" 
#	echo $i:$i"123" | chpasswd 
#	echo "Password for user $i changed successfully"
#done

# new users I will find in /ets/passwd

#awk '{print $1,$2}' users.txt 

user=$(awk '{print $1}' users.txt
ID=$(awk {print $2}' users.txt

#for i in $(cat users.txt); do 
	useradd -g $ID $user; echo "user $user added successfully!"
        id -gn $user
#	usermod -u $ID $user 
	passwd -d $user; 
	echo $user"123" | passwd  $user --stdin; 
#done

