while true
do
read -p "Enter a num: " num
if [ $num -gt 0 ];then
    result=`expr $num \* $num`
    echo "The multiple of $num is: $result"
elif [ $num -lt 0 ];then
     echo "You typed $num, negative numbers not allow"
     continue
elif [ $num -eq 0 ];then
     echo "You typed $num since it's $num terminating the loop"
     break
fi
done
