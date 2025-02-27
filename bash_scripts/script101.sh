#!/bin/bash
arg1=$1
shift
array=( "$@" )
last_idx=$(( ${#array[@]} - 1 ))
arg2=${array[$last_idx]}
unset array[$last_idx]
echo "arg1=$arg1"
echo "arg2=$arg2"
echo "array contains: "
printf "%s\n" "${array[@]}"
#To start script via CLI sh script101.sh 100 "${arr[@]}" 200, where arr=("Hello" "World" "300")
