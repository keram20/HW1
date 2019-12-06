#!/bin/bash

cat /etc/*release > logs001.txt

File=logs001.txt #Info

if grep -q "CentOS Linux 7 (Core)" "$File"; 
then

	echo "system je Centos|RH7"
#	yum check-update
#	curl -fsSL https://get.docker.com/ | sh
#	sudo systemctl start docker
#	sudo systemctl status docker
#	systemctl enable docker
#	usermod -aG docker $(whoami)
else 
	echo "neviem co je to"
fi


# if [[ 'grep 'SomeString' $File' ]];then
#   # Some Actions
# fi
