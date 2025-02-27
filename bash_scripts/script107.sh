#mergeArray () {
#	local -n _srce=${1?Source var is missed.} _trgt=${2?Target var is missed.}
#	local _tvar      
#	IFS=\  read _ _tvar _ <<< "${_srce@A}"
#	case ${_tvar#-} in
#		*a*)  local IFS=$'\a'; _trgt=${_srce[*]} ;;
#		*A*)  _trgt=''
#			for _tvar in "${!_srce[@]}" ;do
#				printf -v _tvar '%s\a%s\a' "$_tvar" "${_srce[$_tvar]}"
#				_trgt+="$_tvar"
#			done
#			_trgt=${_trgt+%$'\a'};;
#		*) printf >&2 '%s ERROR: Variable "%s" is not an array.\n' \
#		       $FUNCNAME "$1"
#		return 1 ;;
#	esac
#}
mergeArray () {
    local -n _srce=${1?Source var missing.} _trgt=${2?Target var missing.}
    local  _tvar
    IFS=\  read _ _tvar _ <<< "${_srce@A}"
    case ${_tvar#-} in
        *a*)  local IFS=$'\a'; _trgt=${_srce[*]} ;;
        *A*)  _trgt=''
              for _tvar in "${!_srce[@]}" ;do
                  printf -v _tvar '%s\a%s\a' "$_tvar" "${_srce[$_tvar]}"
                  _trgt+="$_tvar"
              done
              _trgt=${_trgt%$'\a'} ;;
        *  ) printf >&2 '%s ERROR: Variable "%s" is not an array.\n' \
                 $FUNCNAME "$1"
             return 1 ;;
    esac
}
#arg1=${1}
#IFS=$'\a' read -ra arg2 <<<"$2"
#IFS=$'\a' read -ra _tmpvar <<<"$3"
#printf -v _tmpvar '[%s]="%s"' "${_tmpvar[@]}//\"/\\\"}"
#declare -A arg3="($_tmpvar)"
#arg4=${4}
#declare -p arg{1,2,3,4}
#------------------#
#=====USAGE========#
var1="Hello world!"
myArray=("foo bar baz" 'alice bob charlie' 'strawberry raspberry')
declare -A myAArray='([Full name]="John Doo" [Birth date]="1970/01/02 12:34:56"
    [Status]="Maried" [Title]="Chief")'
mergeArray myArray mergedArray
mergeArray myAArray mergedAArray
ssh cloud_user@18.133.249.146 /bin/bash -s <<eoRemote
    /home/cloud_user/script107.sh  "$var1" "$mergedArray" "$mergedAArray" "Still seem nice, is not it?"
eoRemote
