read -p "Enter a filename to delete: " fname
if rm $fname 2> /dev/null; then
  echo "$fname is deleted"
else
    echo "$fname not exist"
fi
