i=0
valid=357
while true
do
  read -p "Enter pin-code: " num
  if [ $num != $valid ];then
       echo "You typed wrong pin-code, please try again"
       if [ $i -eq 2 ];then
  	     echo "Your account is blocked, please try again after 24h"
	     break
       fi
       let i++
       continue
   elif [ $num -eq $valid ];then
	echo "You typed a valid code"
	break
   fi
done
