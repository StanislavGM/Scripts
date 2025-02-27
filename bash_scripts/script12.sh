#!/bin/bash
echo -n "Enter a string: "
read str
if [ -z $str ]
then
    echo "The given string is zero"
fi
echo "Bye"
