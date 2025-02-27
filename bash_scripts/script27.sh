clear
tput cup 10 40
echo "Menu"
tput cup 11 40
echo "****"
tput cup 12 40
echo "1. Today date"
tput cup 13 40
echo "2. Delete a file"
tput cup 14 40
echo "3. Number of users connected"
tput cup 15 40
echo "4. Current working directory"
tput cup 16 40
echo "5. Current connected users"
tput cup 17 40
echo "Enter your choice: "
read choice

case $choice in
1)echo "Today date is: `date`";;
2)sh script14.sh;;
3)echo "The number of connected users is: `who | wc -l`";;
4)pwd;;
5)echo "The current connected user is: `whoami`";;
*)echo "Wrong choice.. try again";;
esac
