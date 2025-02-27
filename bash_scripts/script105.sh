#At first, we need to import merge function in CLI directly
#mergeArray() {
#	local IFS=$'\a'
#	local -n src=$1 tgt=$2
#	tgt=${src[*]}
#}
arg1="$1"
IFS=$'\a' read -ra arg2 <<<"$2"
arg3="$3"
declare -p arg{1,2,3}
#After merge function injection, we should define 3 variables via CLI.
#var1=Hello var2=(foo bar baz) var3=World
#Next we must to start merge function with 2 arguments, like this: mergeArray var2 mvar2
#After that, we can start our mash script with arg where second arg is modified: sh script105.sh "$var1" "$mvar2" "$var3"
#For the output:
#declare -- arg1="Hello"
#declare -a arg2=([0]="foo" [1]="bar" [2]="baz")
#declare -- arg3="World"
