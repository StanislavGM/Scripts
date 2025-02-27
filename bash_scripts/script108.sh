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

var1="Hello World"
myArray=("foo bar baz" 'alice bob charlie' 'strawberry raspberry')
declare -A myAArray='([Full name]="John Doo" [Birth date]="1970/01/02 12:34:56" 
    [Status]="Maried")'
myAArray[Title]="Chief's pain sufferer"
myAArray[datas]='{ "height": "5.5 feet", "weight":"142 pounds",'
myAArray[datas]+=$' "phrase": "Let\'s go!" }'

mergeArray myArray mergedArray
mergeArray myAArray mergedAArray

ssh cloud_user@18.170.116.156 /bin/bash -s <<eoRemote
    /home/cloud_user/script107.sh  "${var1//\"/\\\"}" "${mergedArray//\"/\\\"}" \
         "${mergedAArray//\"/\\\"}" "This is still seem nice, isn't it?"
eoRemote
#jq <<<${arg3[datas]}
