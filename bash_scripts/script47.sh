for i in *
do
  if [ ! -s $i ]
  then
     echo $i
  fi
done
