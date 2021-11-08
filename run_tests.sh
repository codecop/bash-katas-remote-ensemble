#!/bin/bash
compute_diff(){
    echo test_"$1"
    ./bin/fizzbuzz.sh "$1" > test_output.txt
    diff -y --suppress-common-lines test_output.txt ./test/fizzbuzz_"$1"_expected_output.txt
}

compute_diff 1
compute_diff 2
compute_diff 3
compute_diff 5