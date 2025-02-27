i=1
while [ $i -le 10 ]
do
  echo $i
  let i++
  if [ $i -eq 5 ];then
     continue
  fi
#  echo $i
done
