ARG1="$1"
ARRAY1="$2"
ARG2="$3"
ARRAY2="$4"
echo "${ARG1}"; echo "$ARRAY1"; echo "$ARG2"; echo $ARRAY2
#To launch the script: sh script104.sh first_arg "${ARRAY[*]}" third_arg "${ARRAY2[*]}" Parenthes were deleted from ARRAY1 and ARRAY2 variables.
