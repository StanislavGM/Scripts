read -p "Enter a month: " month
mon=`echo $month | cut -c 1-3 | tr "[A-Z]" "[a-z]"`
case $mon in
feb) echo "There are 28 or 29 days in $mon";;
jan|mar|may|jul|aug|oct|dec) echo "There are 31 days in the $mon";;
apr|jun|sep|nov) echo "There are 30 days in $mon";;
*) echo "Unknown month, please check the correct month name: $mon";;
esac
