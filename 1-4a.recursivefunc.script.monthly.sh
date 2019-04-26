#!/bin/bash
#create file sat_data_4-15-18.tar, etc. in 
#ls /inputdir
#created /processeddir to move tars to folder 
#with just the date names extracted from original var

clear

for i in /inputdir/*
do
	#remove the prefix dir path and trailer .tar file extension
	just_file_name=`echo ${i//\/inputdir\/sat_data_/}` #remove sat_data_ and replace with nothing
	
	new_dir_name=`echo ${just_file_name//.tar/}` #replace .tar with nothing
	
	#make a dir, copy archive and extract it in new location
	mkdir /processeddir/$new_dir_name
	cp $i /processeddir/$new_dir_name/$just_file_name
	
	cd /processeddir/$new_dir_name
	tar -xf $just_file_name
done
