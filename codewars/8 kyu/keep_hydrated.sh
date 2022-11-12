#!/bin/bash
# https://www.codewars.com/kata/582cb0224e56e068d800003c/shell

time=$1

echo $time * 0.5 | bc -l
