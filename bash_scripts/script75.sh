#Work with variables in the bash functions
var1=1
var2=1
change () {
	echo Inside function
	echo Variable 1 is: $var1
	echo Variable 2 is: $var2
	echo
	local var1=5
	var2=5
	echo
	echo After change inside function
	echo Variable1 is locally $var1
	echo Variable2 is globally $var2
}
echo Before function invocation
echo Variable 1 is: $var1
echo Variable 2 is: $var2
echo
change
echo
echo After function invocation
echo Variable1 is: $var1
echo Variable2 is: $var2
