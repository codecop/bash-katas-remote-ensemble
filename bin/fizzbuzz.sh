#!/bin/bash

for i in $(seq 1 "$1"); 
do 
    output_value="$i"
    if [ $(( $i % 3)) == 0 ] && [ $(( $i % 5)) == 0 ]
    then
        output_value="fizzbuzz"
    elif (( "$i" % 3 == 0 ))
    then
        output_value="fizz"
    elif (( "$i" % 5 == 0 ))
    then
        output_value="buzz"
    fi
    echo ${output_value}
done