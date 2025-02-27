sum=0
function simple_subshell() (
	declare -n sum_ref=$3
	sum_ref=$(($1+$2))
)
simple_subshell 1 2 sum
echo "Sum is $sum"
