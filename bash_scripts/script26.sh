clear
echo -en "\n\n\n\n\n\n\n\n\n\n\n\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t******Menu****** \n 1. Today date \n 2. Delete a file \n 3. Number of connected users to the server \n 4. Current working directory \n 5. Current connected user \n\n Enter your choice "
read choice
case $choice in
1)echo "Today date is: `date`";;
2)sh script14.sh;;
3)echo "Number of connected users is: `who | wc -l`";;
4)pwd;;
5)whoami;;
*)echo "Wrong choice... try again";;
esac

