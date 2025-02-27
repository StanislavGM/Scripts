read -p "Enter a num: " num
if [ `expr $num % 2` -eq 0 ];then
    echo "$num is even num"
else
    echo "$num is odd num"
fi
