#!/bin/bash
#set -ex

i=1
for ID in $(cat id.txt)
do
#    NUM=$i
    nslookup $ID | awk 'NR==5 {print $2}' 
#    nslookup $ID && awk 'NR==5 {print $2}' id.txt
#    S_ID=$(nslookup 'ID' | awk 'NR==5 {print $2}' id.txt)  
#    echo $S_ID
    : $(( i++ ))
done
