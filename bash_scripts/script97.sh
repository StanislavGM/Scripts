while getopts u:a:f: flag
do
	case "${flag}" in
		u) username=${OPTARG};;
		a) age=${OPTARG};;
		f) fullname=${OPTARG};;
	esac
done
echo Username: $username;
echo Age: $age
echo FullName: $fullname;
#To start the script sh  script97.sh -f 'John Smith' -a 25 -u 'john'. p.s. argument are passed to the script with hypon
