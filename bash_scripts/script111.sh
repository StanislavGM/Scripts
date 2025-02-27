argAryTst() {
	local OPT{ARG,IND,ERR} opt Array=()
	local -A AArray='()'
	while getopts "a:A:" opt; do
	    case $opt in
		a) Array+=("$OPTARG") ;;
		A) fld="${OPTARG%%=*}" val="${OPTARG#$fld}" AArray["$fld"]="${val#=}" ;;
	    esac
	done
	shift $((OPTIND-1))
	printf 'You now have three arrays: "$@" (%d), "$%s" (%d) and "$%s" (%d)\n' \
	    $# Array ${#Array[@]} AArray ${#AArray[@]}
	echo "${*@A}"
	declare -p {A,}Array
}
#To start the script: source script111.sh; argAryTst -a foo -A from=Alice -A to=Bob -a bar\ baz Hello world
#Second way: argAryTst -a foo -A from=Alice -A to=Bob -a bar\ baz Hello worl
