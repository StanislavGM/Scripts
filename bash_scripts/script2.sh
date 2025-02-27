read -p "Enter a filename: " fname
if [ -e $fname ]; then
   echo "$fname is exist"
   if [ -f $fname ]; then
      echo "$fname is a regular file"
   else
      echo "$fname is not a regular file"
   fi
else
   echo "$fname is not exist"
fi
