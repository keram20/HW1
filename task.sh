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

user=$(awk '{print $1}' users.txt)
ID=$(awk {print $2}' users.txt)

#for i in $(cat users.txt); do 
	useradd -g $ID $user; echo "user $user added successfully!"
        id -gn $user
#	usermod -u $ID $user 
	passwd -d $user; 
	echo $user"123" | passwd  $user --stdin; 
#done

echo "what  would you like to install: Chrome option one or Firefox option two or  both ?"
while :
do
  read INPUT_STRING
  case $INPUT_STRING in	
	1)
		wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
		sudo yum localinstall google-chrome-stable_current_x86_64.rpm
		echo "Chrome has been instaled"
		;;
	2)
		yum remove firefox
		cd /usr/local
		wget http://ftp.mozilla.org/pub/firefox/releases/70.0.1/linux-x86_64/en-US/firefox-70.0.1.tar.bz2
		tar xvjf firefox-70.0.1.tar.bz2
		sudo ln -s /usr/local/firefox/firefox /usr/bin/firefox
		echo "FIrefox has been instaled"
		;;
	*)
		echo "I have installed Firefox and Chrome"
		;;
  esac
done

read cat /etc/*release

case $DISTR in
     rhel)
              echo "I know it! It is an operating system based on Debian."
                         ;;
                              centos|rhel)
                                        echo "Hey! It is my favorite Server OS!"
                                                  ;;
                                                       windows)
                                                                 echo "Very funny..."
                                                                           ;; 
                                                                                *)
                                                                                          echo "Hmm, seems i've never used it."
                                                                                                    ;;
                                                                                                    esac

