function fibonacci_recursion() {
	argument=$1
	if [[ "$argument" -eq 0 ]] || [[ "$argument" -eq 1 ]];then
		echo $argument
	else
		first=$(fibonacci_recursion $(($argument-1)))
		second=$(fibonacci_recursion $(($argument-2)))
		echo $(( $first + $second ))
	fi
}
echo $(fibonacci_recursion 7)
echo $(fibonacci_recursion 15)
