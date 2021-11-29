#!/bin/bash

get_word() {
    number=$1
    modulus=$2
    string=$3
    word=$4
    if (( "$number" % "$modulus" == 0 ))
    then
        echo "${string}${word}"
    else
        echo "${string}"
    fi
}

for i in $(seq 1 "$1"); 
do 
    output_value=""
    output_value=$(get_word "$i" 3 "$output_value" "fizz")
    output_value=$(get_word "$i" 5 "$output_value" "buzz")
    if [ "$output_value" == "" ] 
    then
        output_value="$i"
    fi
    echo "${output_value}"
done
