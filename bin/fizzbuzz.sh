#!/bin/bash

for i in $(seq 1 "$1"); 
do 
    output_value=""
    if (( "$i" % 3 == 0 ))
    then
        output_value=${output_value}"fizz"
    fi
    if (( "$i" % 5 == 0 ))
    then
        output_value=${output_value}"buzz"
    fi 
    if [ "$output_value" == "" ] 
    then
        output_value="$i"
    fi
    echo ${output_value}
done