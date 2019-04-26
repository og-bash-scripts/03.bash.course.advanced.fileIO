#!/bin/bash

clear
echo 
echo " Budget directory created"
echo 
read -p "Enter last 2 digits of STARTING budget year:" start
read -p "Enter last 2 digits ENDING budget year:" end
echo 
eval mkdir -p /budgets/20{$start..$end}
clear
echo "Directories that exist under /budgets"
echo 
ls /budgets
