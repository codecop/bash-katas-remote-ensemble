#!/bin/bash

get_word_if_dividable() {
    number=$1
    modulus=$2
    word=$3
    if (( "$number" % "$modulus" == 0 ))
    then
        echo "${word}"
    fi
}

for i in $(seq 1 "$1"); 
do 
    output_value=""
    output_value="${output_value}$(get_word_if_dividable "$i" 3 "fizz")"
    output_value="${output_value}$(get_word_if_dividable "$i" 5 "buzz")"
    if [ "$output_value" == "" ] 
    then
        output_value="$i"
    fi
    echo "${output_value}"
done
