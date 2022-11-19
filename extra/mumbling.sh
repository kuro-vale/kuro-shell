#!/bin/bash
accum () {
  for ((i=0; i<${#1}; i++))
  do
    tmp="$(printf "%$((i+1))s" ' ' | tr ' ' ${1:i})"
    tmp=${tmp,,}
    tmp=${tmp^}
    result="$result$tmp"
    if [[ $i -lt $((${#1} - 1)) ]]; then
      result="$result-"
    fi
  done
  echo $result
}
# A-Bb-Ccc
accum "aBc"
