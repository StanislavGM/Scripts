read -p "Enter a filename: " fname
if [ -e $fname ]
then
    echo "The given file $fname is exist"
    if [ -f $fname ]
    then
        echo "$fname is a regular file"
        if [ -r $fname ]
        then
            echo "$fname has read permissions"
	    echo "#############################"
	    cat $fname
            echo "#############################"
        else
            echo "$fname not having read permissions"
        fi
    else
        echo "$fname isn't a regular file"
    fi
else
    echo "$fname isn't exist"
fi
echo Bye
