#!/bin/bash

cat /etc/*release > logs001.txt

File=logs001.txt

if grep -q "CentOS Linux 7 (Core)" "$File"; 
#if grep -q "3.10" "$File"; #toto je RH7 or Centos7
then

	echo "system je Centos|RH7"
	yum check-update
	curl -fsSL https://get.docker.com/ | sh
	sudo systemctl start docker
	sudo systemctl status docker
#	systemctl enable docker
#	usermod -aG docker $(whoami)
else 
	echo "je to RH8"
	sudo dnf module list | grep container-tools #sprav funkciu na porovnanie
	dnf install -y @container-tools  
	podman version # sprav funkciu na porovnanie 
	podman run -it --rm alpine sh #skontroluj ci to funfuje
fi


# if [[ 'grep 'SomeString' $File' ]];then
#   # Some Actions
# fi
