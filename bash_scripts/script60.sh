echo Deleting files...
find ./abc -mtime +90 -exec ls -lt {} \; -exec rm {} \;
