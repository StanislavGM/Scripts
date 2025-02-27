echo -n "Enter a 3 sub marks: "
read sub1 sub2 sub3
if [ $sub1 -ge 35 -a $sub2 -ge 35 -a $sub3 -ge 35 ];then
   echo "pass"
else
   echo "fail"
fi
