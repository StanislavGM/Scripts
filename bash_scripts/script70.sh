#!/bin/bash
#Set the log directory
LOG_DIR="/var/log/xyz/"
#Check if log files exist
if [ $(ls -l $LOG_DIR/*.log > /dev/null 2>&1 | wc -l) -eq 0 ];then
	#Send an email alert
	SUBJECT="Log file alert"
	BODY="Log files are not generating under the directory $LOG_DIR."
	echo "$BODY" | mailx -s "$SUBJECT" nvxfrost@mail.ru
fi
