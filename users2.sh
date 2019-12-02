#!/bin/bash

#awk '{print $1,$2}' users.txt 

user=$( awk '{print $1}'  users.txt)
ID=$( awk '{print $2}' users.txt)

#user=Marek1444
#ID=1458
	
#pocet=(wc -l users.txt)
#echo $pocet

#for i in pocet;
	useradd -u $ID $user
#	usermod -g $ID $user
#        id -gn $user
	passwd -d $user; 
	echo $user"123" | passwd  $user --stdin; 
#done

