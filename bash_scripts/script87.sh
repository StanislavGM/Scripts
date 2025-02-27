#myVar=$@ # need to use in first example, if we want to pass arrays through cli, otherwise an array can be passed in the calling line
#function callingSomeFunction() 
#{
	#for value in "$@"
#	for value in ${myVar[0]} # In case variable is set like "${myVar[0]}", result will be in a single string, otherwise, it will be an array
#	do
#		echo $value:
#	done
#}
#callingSomeFunction
#array=("one" "two" "last")
#callingSomeFunction "${array[@]}"
function linearSearch()
{
 local testVar="$1"
 shift 1
 for value in "$@"
 do
	 echo "$value"
	 if [[ $value == $testVar ]];then
		 echo -e "Found it!\t..after a while."
		 return 0
	 fi
 done
 return 1
}
arr=(1 2 3 4 hello)
linearSearch hello ${arr[@]}
