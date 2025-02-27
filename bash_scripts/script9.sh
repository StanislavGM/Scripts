echo -n "Enter filename to delete all numbers from the file: "
read fname
tr -d "[0-9]" < $fname > delete_result
mv delete_result $fname
echo "All the numbers from $fname deleted"
