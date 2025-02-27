arg1=${1}
IFS=$'\a' read -ra arg2 <<<"$2"
IFS=$'\a' read -ra _tmpvar <<<"$3"
printf -v _tmpvar '[%s]="%s" ' "${_tmpvar[@]//\"/\\\"}"
declare -A arg3="($_tmpvar)"
arg4=$4
declare -p arg{1,2,3,4}
jq <<<${arg3[datas]}
