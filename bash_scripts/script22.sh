echo -n "Enter a filename: "
read fname
if [ -e $fname ];then
   echo "The $fname is exist"
   if [ -f $fname ];then
      echo "$fname is a regular file"
   elif [ -d $fname ];then
        echo "$fname is a directory"
   elif [ -c $fname ];then
        echo "$fname is a c.s.f"
   elif [ -b $fname ];then
	echo "$fname is a b.s.f"
   else
       echo "$fname isn't a reg.file or directory or c.s.f"
   fi
else
    echo "$fname isn't exist"
fi
