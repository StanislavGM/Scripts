usage() { echo "Usage: $0 [-a arg] [-aarg]..."; }
Array=()
while getopts "ha:" opt;do
	case $opt in
		h ) usage; exit;;
		a ) Array+=("$OPTARG");;
		... ) : Some other flags if needed;;
		* ) echo Wrong argument; exit 1;;
	esac
done
shift $((OPTIND-1))
printf 'There are now two arrays: "$@" (%d) and "$Array" (%d)\n' $# ${#Array[@]}
echo "${*@A}"
echo "${Array[@]@A}"
#To start the script: sh script109.sh -a 'Foo bar' -a test -a{a..b}{1,2} Furter args: 'Hello world.'
#Another example starts like this: sh script109.sh "${array[@]/#/-a}" argument1 argument2
