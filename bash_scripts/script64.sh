cnt=1
os_name=`uname`
if [ $os_name == 'Linux' ];then
	echo "$os_name"
elif [ $os_name == 'AIX' ];then
	echo "$os_name"
else
	echo "other"
fi
for each_server in `cat serverlist.txt`
do
	echo "Working on ${each_server}"
	#scp installsh vagrant@${each_server}
	#ssh vagran@${each_server} "sh /tmp/install.sh"
	let cnt++
done
