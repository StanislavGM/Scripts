#Write shell script o delete duplicate records
read -p "Enter a filename: " fname
sort -u $fname > tmp
mv tmp $fname
echo "duplicate records deleted from $fname"
