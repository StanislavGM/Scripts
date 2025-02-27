f() {
	declare -a argAry1=("$!1")
	echo "${argAry1[@]}"
}
arr1=(
    "a" 
    "b"
)
f arr[@] arr2[@] arg2
