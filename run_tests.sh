#!/bin/bash

red=$(tput setaf 1)
green=$(tput setaf 2)
reset=$(tput sgr0)

echo_with_color() {
    echo -n "$1"
    args=$#
    for (( i=2; i<=$args; i+=1 ))
    do
        echo ${!i}
    done
    echo -n "${reset}"
}

compute_diff(){
    
    ./bin/fizzbuzz.sh "$1" > test_output.txt
    # grab output of diff -> if 
    DIFF=$(diff -y --suppress-common-lines ./test/fizzbuzz_"$1"_expected_output.txt test_output.txt) 
    if [ "$DIFF" != "" ] 
    then
        echo_with_color "${red}" test_"$1" "expected                                                      | actual" "${DIFF}" 
    else 
        echo_with_color "${green}" test_"$1"
    fi
}

compute_diff 1
compute_diff 2
compute_diff 3
compute_diff 5