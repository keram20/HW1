#!/bin/bash

sudo wget https://download-cf.jetbrains.com/idea/ideaIC-2018.3.2.tar.gz
sudo tar -xvf ideaIC-2018.3.2.tar.gz


if [ -d "ideaIC-2018.3.2/" ]; then
   echo "Installing config files in ${DIR}..."
   
else
  #echo "Error: ${DIR} not found. Can not continue."
  mkdir ideaIC-2018.3.2/
  exit 1
fi

cd ideaIC-2018.3.2/

cd /usr/bin/
if [ -h "idea" ]; then
   cd  /usr/bin/
   sudo rm -f idea
   echo " rm symb_link removed"
   sudo ln -s ./ideaIC-2018.3.2/bin/idea.sh /usr/bin/idea

else
  echo " create symb_link"
 sudo ln -s ./ideaIC-2018.3.2/bin/idea.sh /usr/bin/idea

fi

