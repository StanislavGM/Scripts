usage() { echo "Usage: $0 [-a arg] [-aarg]..."; }
Array=()
declare -A AArray='()'
while getopts "ha:A:" opt; do
	case $opt in
		h) usage; exit;;
		a) Array+=("$OPTARG");;
		A) fld="${OPTARG%%=*}" val="${OPTARG#$fld}" AArray["$fld"]="${val#=}";;
		...) : Some other flags if needed;;
		*) echo Wrong argument.; exit 1 ;;
	esac
done
shift $((OPTIND-1))
printf 'You now have three arrays: "$@" (%d), "$Array" (%d) and "$AArray "(%d)\n' \
	$# ${#Array[@]} ${#AArray[@]}
echo "${*@A}"
declare -p {A,}Array
#To start the script we should execute this script: sh script110.sh -a 'Foo bar' -a test -a{a..b}\ {1,2} -A test=Foo\ bar -A flag -AString==Complex$'\n'"line bounded by =" -Aequal== Furter args: 'Hello world.'
