#!bin/bash
# https://www.codewars.com/kata/5ae62fcf252e66d44d00008e/shell

a=$1
b=$2
c=$3

results=($((a * b * c)) $((a + b + c)) $(( (a + b) * c)) $((a * (b + c) )))
IFS=$'\n'

echo "${results[*]}" | sort -nr | head -n1
