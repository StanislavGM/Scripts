read -p "Enter a username: " uname
if grep -w $uname /etc/passwd > /dev/null
then
    echo "$uname user is exist"
    if who | grep -w "$uname" > /dev/null
    then
        echo "$uname is connected to the server"
    else
        echo "$uname isn't connected to the server"
    fi
else
    echo "$uname user isn't exist"
fi
