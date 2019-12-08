#!/bin/bash

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


while getopts ":hfc" opt;
 do
   	case $opt
        in
            h) echo "Instal chrome -c install firefox -f "; exit 0;;
            c) CHROME ; exit 2 ;;
            f) FIREFOX ; exit 2 ;;
            ?) echo "value is not valid"; exit 2;;
        esac
 done


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


