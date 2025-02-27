if [ "$#" -ne 3 ];then
	echo "Usage: $0 <username> <age> <fullname>"
	exit 1
fi
#The main code
echo "Username: $1";
echo "Age: $2";
echo "FullName: $3";
