read -p "Enter a month: " mon
k=`echo $mon | cut -c 1-3 | tr "[A-Z]" "[a-z]"`
echo $k
