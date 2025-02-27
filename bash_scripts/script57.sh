echo "Enter a username: "
read uname
grep -w "$uname" /etc/passwd > /dev/null
if [ $? -eq 0 ]
then
	echo "$uname is valid user"
else
	echo "$uname isn't valid user"
fi
