#!/bin/sh

# https://www.codewars.com/kata/5b853229cfde412a470000d0/shell

dad=$1
son=$2
result=$((dad-son*2))

echo ${result#-}
