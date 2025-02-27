#!/bin/bash
set -x
echo "Starting script..."
filename="example.txt"
if [ ! -f $filename ];then
   echo "File not found!"
   exit 1
fi
echo "File exists!"
set +x
echo Script finished
