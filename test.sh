
#!/bin/bash

echo "what  would you like to install: Chrome option one or Firefox option two or  both ?"

read INPUT_STRING
#INPUT_STRING=1
#while [1]
  	case $INPUT_STRING
        in
          	1)
                
                echo "Chrome has been instaled"
                ;;
                2)
                echo "FIrefox has been instaled"
                ;;
                *)
		 echo "I have installed Firefox and Chrome"
                wget https://dl.google.com/linux/direct/google-chrome-stable_cu$
          	sudo yum localinstall google-chrome-stable_current_x86_64.rpm
                yum remove firefox
                cd /usr/local
                wget http://ftp.mozilla.org/pub/firefox/releases/70.0.1/linux-x$
                tar xvjf firefox-70.0.1.tar.bz2
                sudo ln -s /usr/local/firefox/firefox /usr/bin/firefox
		echo "both"
                ;;

	
	esac

