#!/bin/bash

function RH7 {
    	echo "system je Centos|RH7"
        yum check-update
        curl -fsSL https://get.docker.com/ | sh
        sudo systemctl start docker
        sudo systemctl status docker
#	systemctl enable docker
#	usermod -aG docker $(whoami)
}

function RH8 {
    	echo "je to RH8"
        sudo    wget http://springdale.math.ias.edu/data/puias/unsupported/7/x86_64//d$
        sudo    yum install -y dnf-0.6.4-2.sdl7.noarch.rpm dnf-conf-0.6.4-2.sdl7.noarc$
        sudo    yum install -y dnf
        sudo dnf module list | grep container-tools #sprav funkciu na porovnanie
        sudo dnf install -y @container-tools
        sudo podman version # sprav funkciu na porovnanie
        sudo podman run -it --rm alpine sh #skontroluj ci to funfuje
} 

while getopts ":h" opt;
    do
        case $opt
        in
            h) echo "if you need help ask your peer or Google"; exit 0;;
            ?) echo "value is not valid"; exit 2;;
        esac
 done


cat /etc/*release > logs001.txt

File=logs001.txt

if grep -q CentOS-7 "$File";  
then
	RH7 # function is upper 

else 
	RH8 # function is upper

fi


# if [[ 'grep 'SomeString' $File' ]];then
#    Some Actions
# fi

