ARG1="$1";shift
ARG2="$1";shift
ARRAY=("$@")
echo $ARG1; echo "$ARG2"; echo "${ARRAY[@]}"
#Launch: sh script103.sh first_arg second_arg ${array[@]}
#Second not full variant: sh script103.sh first_arg ${ARRAY[*]} third_argument ${ARRAY2[@]}
