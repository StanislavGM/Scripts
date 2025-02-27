echo -n "Enter a month to get the specific quarter: "
read mon
month=`echo $mon | cut -c 1-3 | tr "[A-Z]" "[a-z]"`
#echo $month
case $month in
	jan|feb|mar)echo "You are in the first quarter";;
	apr|may|jun)echo "You are in the second quarter";;
	jul|aug|sep)echo "You are in the third quarter";;
	oct|nov|dec)echo "You are in the fourth quarter";;
	*)echo "Not a valid one check again";;
esac
