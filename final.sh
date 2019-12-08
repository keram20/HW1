#!/bin/bash


-----------------------------------
------------- help ----------------
-----------------------------------

while getopts ":hfc" opt;
 do
   	case $opt
        in
            h) echo " This script has 5 part. you can install Instal  chrome -c install firefox -f "; exit 0;;
            c) CHROME ; exit 0 ;;
            f) FIREFOX ; exit 0 ;;
            ?) echo "value is not valid"; exit 2;;
        esac
 done

--------------------------------------
--- idea -----------------------------
-------------------------------------
#!/bin/bash

#awk '{print $1,$2}' users.txt  example 

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




-----------------------------
--instal docker or podman ----
------------------------------

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

----------------------------------------
----------- chrome or firefox ----------
---------------------------------------

function CHROME {
        wget https://dl.google.com/linux/direct/google-chrome-stable_current_x$
        sudo yum localinstall google-chrome-stable_current_x86_64.rpm
        echo "Chrome has been instaled"
}

function FIREFOX {
        yum remove firefox
        cd /usr/local
        wget http://ftp.mozilla.org/pub/firefox/releases/70.0.1/linux-x86_64/e$
        tar xvjf firefox-70.0.1.tar.bz2
        sudo ln -s /usr/local/firefox/firefox /usr/bin/firefox
        echo "FIrefox has been instaled"
}


echo "what  would you like to install: Chrome option one or Firefox option two or  both ?"
 
# read -p INPUT_STRING

# read -p INPUT_STRING
INPUT_STRING=2
	case $INPUT_STRING
        in
	c)
          CHROME
          ;;
	f)
          FIREFOX
          ;;
	*)
          FIREFOX
          CHROME
          ;;
  esac


--------------------------------------
--------- IDEA ----------------------
-------------------------------------

#!/bin/bash

sudo wget https://download-cf.jetbrains.com/idea/ideaIC-2018.3.2.tar.gz
tar -xvf ideaIC-2018.3.2.tar.gz


if [ -d "ideaIC-2018.3.2/" ]; then
   echo "Installing config files "
   
else
  #echo "Error: we have to create folder."
  mkdir ideaIC-2018.3.2/
  exit 0
fi

cd ideaIC-2018.3.2/

cd /usr/bin/
if [ -h "idea" ]; then
   cd  /usr/bin/
   sudo rm -f idea
   echo " rm symb_link removed"
   
else
  echo " create symb_link"

fi

sudo ln -s ./ideaIC-2018.3.2/bin/idea.sh /usr/bin/idea

#!/bin/bash

------------------------
----- maven ------------
------------------------

sudo yum install maven -y
mvn -version

#intall OpenJDK
java-1.8.0-openjdk
java -version

wget https://www-us.apache.org/dist/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.tar.gz -P /tmp

sudo tar xf /tmp/apache-maven-3.6.0.tar.gz -C /opt
sudo ln -s /opt/apache-maven-3.6.0 /opt/maven

sudo touch /etc/profile.d/maven.sh

sudo export JAVA_HOME=/usr/lib/jvm/jre-openjdk > /etc/profile.d/maven.sh 
sudo export M2_HOME=/opt/maven > /etc/profile.d/maven.sh
sudo export MAVEN_HOME=/opt/maven > /etc/profile.d/maven.sh
sudo export PATH=${M2_HOME}/bin:${PATH} > /etc/profile.d/maven.sh

sudo chmor +755 /etc/profile.d/maven.sh

sudo source /etc/profile.d/maven.sh

sudo mvn -version

