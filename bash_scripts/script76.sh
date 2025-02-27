arguments () {
	echo The function location is $0
	echo There are $# arguments
	echo "Argument1 is $1"
	echo "Argument2 is $2"
	echo "<$@>" and "<$*>" are the same
	echo list the elements in a for loop to see the difference
	echo "* gives: "
	for arg in "$*"; do echo "<$arg>"; done
	echo "@ gives: "
	for arg in "$@"; do echo "<$arg>"; done
}
arguments hello world
