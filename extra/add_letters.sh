#!/bin/bash
addLetters() {
  alpha="abcdefghijklmnopqrstuvwxyz"
  for letter in `echo $1 | fold -w1`
  do
    buf=${alpha#*$letter}
    n=$(( n + ${#alpha} - ${#buf}))
  done
  if [[ $n -le 0 ]]; then
     n=26
  fi
  index=$(( (n - 1) % 26))
  echo ${alpha:index:1}
}

# "f"
addLetters "abc"
