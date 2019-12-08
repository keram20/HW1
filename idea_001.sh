#!/bin/bash

sudo wget https://download-cf.jetbrains.com/idea/ideaIC-2018.3.2.tar.gz
tar -xvf ideaIC-2018.3.2.tar.gz
mkdir ideaIC-2018.3.2/

cd ideaIC-2018.3.2/
#rm idea 
sudo ln -s ./ideaIC-2018.3.2/bin/idea.sh /usr/bin/idea


