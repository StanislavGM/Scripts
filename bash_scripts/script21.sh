read -p "Enter a num: " num
if [ $num -gt 0 ]
then
    echo "$num is a positive num"
elif [ $num -lt 0 ]
then
    echo "$num is negative num"
elif [ $num -eq 0 ]
then
    echo "$num is zero"
fi
