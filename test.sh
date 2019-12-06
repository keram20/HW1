
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
		echo "both"
	esac

