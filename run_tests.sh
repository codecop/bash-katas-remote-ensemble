#!/bin/bash
./bin/fizzbuzz.sh 1 > test_output.txt
diff -y --suppress-common-lines test_output.txt ./test/fizzbuzz_1_expected_output.txt

./bin/fizzbuzz.sh 2 > test_output.txt
diff -y --suppress-common-lines test_output.txt ./test/fizzbuzz_2_expected_output.txt