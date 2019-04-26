#!/bin/bash

trap ctrl_c 2

ctrl_c()
{
	echo "Exiting script now..."
	exit 1
}

echo
read -p "Enter last 2 digits of starting budget year:" start
read -p "Enter last 2 digits of ending budget year:" end
echo
eval mkdir -p /budgets/20{${start:=18}..${end:=25}} #default make dir 2018-2025
echo "Subject: $0 completed successfully" >> msg.txt
echo "Contents of /budgets:" >> msg.txt
ls -l /budgets >> msg.txt
sendmail test@gmail.com < msg.txt
