#!/bin/bash

red=$(tput setaf 1)
green=$(tput setaf 2)
reset=$(tput sgr0)

compute_diff(){
    echo test_"$1"
    ./bin/fizzbuzz.sh "$1" > test_output.txt
    # grab output of diff -> if 
    DIFF=$(diff -y --suppress-common-lines ./test/fizzbuzz_"$1"_expected_output.txt test_output.txt) 
    if [ "$DIFF" != "" ] 
    then
        echo "${red}"
        echo "expected                                                      | actual"
        echo "${DIFF}"
        echo "${reset}"
    fi
}

compute_diff 1
compute_diff 2
compute_diff 3
compute_diff 5