sum=0
function simple_subshell() (
	sum_ref=$(($1+$2))
)
simple_subshell # Gives an error
echo "Sum is $sum"
