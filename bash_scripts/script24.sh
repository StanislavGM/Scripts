read -p "Enter a num: " num
if [ $num -gt 0 -a $num -lt 10 ];then
   echo "$num is a single digit num"
elif [ $num -gt 9 -a $num -lt 100 ];then
   echo "$num is a two digit num"
elif [ $num -gt 99 -a $num -le 999 ];then
   echo "$num is a three digit num"
else
   echo "None of above"
fi
echo Bye
