mergeArray() {
       local IFS=$'\a'
       local -n src=$1 tgt=$2
       tgt=${src[*]}
}
myArray=("foo bar baz" 'alice bob charlie' 'strawberry raspberry')
mergeArray myArray mergedArray
var1="Hello World!"
ssh cloud_user@18.133.249.146 /bin/bash -s <<eoRemote
    /home/cloud_user/script105.sh  "$var1" "$mergedArray" "This seem nice, isnt't it?"
eoRemote
