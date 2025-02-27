read -p "Enter a username: " uname
if grep -w "$uname" /etc/passwd >/dev/null;then
echo "User $uname is exist"
else
    echo "User $fname isn't exist"
fi
