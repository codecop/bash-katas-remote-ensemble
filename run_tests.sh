#!/bin/bash

red=$(tput setaf 1)
green=$(tput setaf 2)
reset=$(tput sgr0)

echo_with_color() {
    echo -n "$1"
    args=$#
    for (( i = 2; i <= args; i += 1 ))
    do
        echo "${!i}"
    done
    echo -n "${reset}"
}

compute_diff() {
    script_name="fizzbuzz"
    test_case="$1"
    ./bin/${script_name}.sh "${test_case}" > test_output.txt
    diff -y --suppress-common-lines ./test/${script_name}_"${test_case}"_expected_output.txt test_output.txt
}

run_test(){
    diff=$(compute_diff "$1")
    if [ "$diff" != "" ] 
    then
        echo_with_color "${red}" test_"$1" "expected                                                      | actual" "${diff}" 
    else 
        echo_with_color "${green}" test_"$1"
    fi
}

run_test 1
run_test 2
run_test 3
run_test 5