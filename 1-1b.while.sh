#!/bin/bash
choice="0"

trap ctrl_c 2

ctrl_c()
{
	clear
	echo "Cleaning up temp files..."
	for i in /tmp/*
	do
		if !(test -d $i) #dont delete subdir by testing it
		then
			rm $i
		fi
	done
	exit 1
}

while (($choice != "1"))
do
	clear
	echo
	echo "Please select an option"
	echo
	echo "1 - Exit"
	echo
	read choice
done
