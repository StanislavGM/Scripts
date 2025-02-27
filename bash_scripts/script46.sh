for i in *
do
  if [ -d $i ]
then
     if [ $i == 'xyz' ]
     then
         echo "Удаляем $i"
	 rm -rf $i
     fi
  fi
done
