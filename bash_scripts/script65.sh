cnt=1
for each_server in $(cat serverlist.txt)
do
	echo "Working on ${each_server}"
	scp install.sh(script63.sh) autoadmin@${each_server}/tmp
	ssh autoadmin@${each_server} "sh /tmp/install.sh"
	let cnt++
done
