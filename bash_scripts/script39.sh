i=1
while [ $i -le 10 ]
do
  if [ $i -eq 5 ];then
     let i++
     continue
  fi
  echo $i
  let i++
done
