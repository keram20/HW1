#!/bin/bash

#users=Marek Tomas Jakub Honza

#for i in $users; do
#for i in $( cat users.txt ); do 
#	useradd $i echo "user $i added successfully!" 
#	echo $i:$i"123" | chpasswd 
#	echo "Password for user $i changed successfully"
#done

# new users I will find in /ets/passwd

for i in $(cat users.txt); do 
	useradd $i; 
	passwd -d $i; 
	echo $i"123" | passwd  $i --stdin; 
done
