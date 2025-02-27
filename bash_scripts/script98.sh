while getopts u:a:f: flag
do
	case "${flag}" in
		u) username=${OPTARG};;
		a) age=${OPTARG};;
		f) fullname=${OPTARG};;
	esac
done
#Now handle positional arguments
shift $((OPTIND-1))
param1=$1
param2=$2
param3=$3
echo "Username: $username"
echo "Age: $age"
echo "FullName: $fullname"
echo "First positional parameter: $param1"
echo "Second positional parameter: $param2"
echo "Third positional parameter: $param3"
#To run script: sh  script98.sh -u 'john' -f 'John Smith' -a 25 10 11 12
