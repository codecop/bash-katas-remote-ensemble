#!/bin/bash

for i in $(seq 1 "$1"); 
do 
    output_value=""
    if [ $(( $i % 3)) == 0 ] && [ $(( $i % 5)) == 0 ]
    then
        output_value="fizzbuzz"
    elif (( "$i" % 3 == 0 ))
    then
        output_value=${output_value}"fizz"
    elif (( "$i" % 5 == 0 ))
    then
        output_value=${output_value}"buzz"
    else 
        output_value="$i"
    fi
    echo ${output_value}
done