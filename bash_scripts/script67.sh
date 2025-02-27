#!/bin/bash
#Check Apache web server
if systemctl status apache2 | grep -q "Active: active (running)";then
	echo "Apache web server is running"
else
	echo "Apache web server is down"
	sendmail nvxfrost@mail.ru << EOF
Subject: Apache web server is down
Apache web server is down on $(hostname)
EOF
fi
#Check MySQL database
if systemctl status mysql | grep -q "Active: active (running)";then
	echo "MySQL database is running"
else
	echo "MySQL database is down"
	sendmail nvxfrost@mail.ru << EOF
Subject: MySQL database is down
MySQL database is down on $(hostname).
EOF
fi
#Check SSH server
if systemctl status sshd | grep -q "Active: active (running)";then
	echo "SSH server is running"
else
	echo "SSH server is down"
	sendmail nvxfrost@mail.ru << EOF
Subject: SSH server is down
SSH server is down on $(hostname)
EOF
fi
