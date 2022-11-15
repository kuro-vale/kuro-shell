#!bin/bash
# https://www.codewars.com/kata/5763bb0af716cad8fb000580/shell
if [ $1 -eq 0 ]; then
  echo 1
else
  echo $(( ($1 + 1) ** 3 - ($1 - 1) ** 3 ))
fi
