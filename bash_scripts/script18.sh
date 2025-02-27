echo -n "Enter a name: "
read num
if [ $num -gt 0 ]
then
    echo "$num is a positive num"
    if [ $num -lt 10 ]
    then
	echo "$num is single digit number"
        if [ `expr $num % 2` -eq 0 ]
        then
            echo "$num is a single digit even num"
        else
            echo "$num is a single digit odd num"
        fi
   else
       echo "$num isn't a signle digit num"
   fi
else
    echo "$num isn't a positive num"
fi
