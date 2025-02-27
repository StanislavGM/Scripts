#!/bin/bash
#Set the threshold limit
THRESHOLD=90
#Get the file system usage percentage
CURRENT_USAGE=$(df -h / | awk '{print $5}' | tail -n 1 | cut -d '%' -f1)
#Check if the usage has crossed the threshold limit
if [ "$CURRENT_USAGE" -gt "$THRESHOLD" ];then
	echo True
	#Send an email alert
	#SUBJECT= "File system usage alert"
	#Body="The file system usage has crossed the threshold limit of $THRESHOLD%. The current usage is $CURRENT_USAGE%."
	#echo "$BODY" | mailx -s "$SUBJECT" nvxfrost@mail.ru
fi
