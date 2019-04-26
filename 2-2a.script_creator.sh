#!/bin/bash
#This script generates a dynamic backup script for historical purposes
clear
echo

read -p "Enter new script filename without path or .sh" new_script

new_script="/scripts/"$new_script".sh"

echo "read -p \"Enter source directory to backup: \" backupdir=" >> $new_script

dateportion=`date +%Y-%m-%d`

echo "tar -zvcf backup_$dateportion".tar" \$backupdir" >> $new_script

chmod +x $new_script

. $new_script
echo "Script $new_script executed successfully"
echo "#Backed up location: $backupdir" >> $new_script
echo "Backed up location: $backupdir"
echo
