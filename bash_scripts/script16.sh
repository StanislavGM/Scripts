echo -n "Enter a filename to verify: "
read fname
if [ -f $fname ]
then
    echo "$fname is a reg file"
else
    echo "$fname isn't a reg file"
fi
