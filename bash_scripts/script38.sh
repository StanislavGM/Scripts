i=1
while true
do
echo "$i"
if [ $i -eq 10 ]
then
	break
fi
let i++
done
