for file in /etc/*
do
  if [ $file == "/etc/resolv.conf" ];then
#  cnt_name_server=`grep -c nameserver $file`
  cnt_name_server=$(grep -c nameserver $file)
  echo $cnt_name_server
  fi
done
