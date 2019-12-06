#!/bin/bash

echo "what  would you like to install: Chrome option one or Firefox option two or  both ?"
while 

INPUT_STRING=1
#  read -p INPUT_STRING
  case $INPUT_STRING in
        1)
          	wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
                sudo yum localinstall google-chrome-stable_current_x86_64.rpm
                echo "Chrome has been instaled"
                ;;
        2)
          	yum remove firefox
                cd /usr/local
                wget http://ftp.mozilla.org/pub/firefox/releases/70.0.1/linux-x86_64/en-US/firefox-70.0.1.tar.b$
                tar xvjf firefox-70.0.1.tar.bz2
                sudo ln -s /usr/local/firefox/firefox /usr/bin/firefox
                echo "FIrefox has been instaled"
                ;;
        *)
          	echo "I have installed Firefox and Chrome"
		wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
                sudo yum localinstall google-chrome-stable_current_x86_64.rpm
		yum remove firefox
                cd /usr/local
                wget http://ftp.mozilla.org/pub/firefox/releases/70.0.1/linux-x86_64/en-US/firefox-70.0.1.tar.b$
                tar xvjf firefox-70.0.1.tar.bz2
                sudo ln -s /usr/local/firefox/firefox /usr/bin/firefox
                ;;
  esac


