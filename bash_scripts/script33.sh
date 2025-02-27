i=1
while [ $i -le 10 ]
do
  echo "$i"
  let i++ #`expr $i + 1`
done
