#!/bin/bash
arg1="$1"
arg2=("${!2}")
arg3="$3"
arg4=("${!4}")
echo "arg1=$arg1"
echo "arg2 array=${arg2[@]}"
echo "arg2 #elem=${#arg2[@]}"
echo "arg3=$arg3"
echo "arg4 array=${arg4[@]}"
echo "arg4 #elem=${#arg4[@]}"
arr=(ab 'x y' 123)
arr2=(a1 'a a' bb cc 'it is one')
#To launch the script first of all it needs to setup arrays: export arr=(ab 'x y' 123) and export arr2=(a1 'a a' bb cc 'it is one'). Then we execute using source: 
#. ./script102.sh "foo" "arr[@]" "bar" "arr2[@]"
