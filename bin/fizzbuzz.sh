#!/bin/bash
for i in $(seq 1 "$1"); 
do 
    if (( "$i" % 3 == 0 ))
    then
        echo "fizz"
    elif (( "$i" % 5 == 0 ))
    then
        echo "buzz"
    else
        echo "$i";
    fi
done