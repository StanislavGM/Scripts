echo Total number of arguments: $#
if [ $# -eq 3 ];then
	sum=$(($1+$2+$3))
	echo $sum
else
	echo Invalid args, please provide only 3 numbers
fi
