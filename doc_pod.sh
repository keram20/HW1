#!/bin/bash

while getopts ":h" opt;
    do
      	case $opt
        in
            h) echo "if you need help ask your peer or Google"; exit 0;;
            ?) echo "value is not valid"; exit 2;;
        esac
 done

#echo "some data for the file" >> fileName

for i in $(ls -a /etc/*release); 
do 
echo ===$i===; 
cat $i >> output.txt;
#echo "cat $i" >> output.txt
done

tail -f output.txt | grep  "PRETTY_NAME"

#sed PRETTY_NAMEg output.txt
#while 
#read -r line; do
#    process "$line"
#done < $output


#echo '$OS_Q'
