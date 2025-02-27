#test_function () {
#	echo Test
#	return 100
#}
#echo Test function\'s output is:
#test_function
#echo The exit status is:
#echo $?
test_function() {
	echo Test
}
result=$(test_function)
echo $result is saved in a variable for later use
