#!/bin/bash
#date:
#purpose: This script developed for delete empty records from the file
#date modified:
#Author name: name-em@il
echo ""
echo -n "Enter a filename to delete empty records"
read fname
grep -v "^$" $fname > tmp
mv tmp $fname
echo "Empty records deleted from $fname"
