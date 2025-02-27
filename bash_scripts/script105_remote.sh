arg1="$1"
IFS=$'\a' read -ra arg2 <<<"$2"
arg3="$3"
declare -p arg{1,2,3}
