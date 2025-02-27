read -p "Enter a character: " char
case $char in
[a-z])echo "The given character $char is in lower case";;
[A-Z])echo "The given character $char is in upper case";;
[[:digit:]])echo "The given character $char is a digit character";;
[^a-zA-Z0-9])echo "The given character $char is a special character";;
*)echo "Wrong type of character provided";;
esac
