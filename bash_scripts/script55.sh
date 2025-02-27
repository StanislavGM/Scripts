i=1
for user in $@
do
	echo Username - $i: $user
	let i++
done
echo Total number of users: $#
