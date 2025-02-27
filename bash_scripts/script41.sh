while true
do
  echo "Please type something...(bye to quit)"
  read input_str
  echo "You typed $input_str"
  if [ $input_str == "bye" ];then
	  break
  fi
done
