#!/bin/bash
clear
echo "Reading file contents..."
echo
start_time=`date +%s`
numlines=`wc -l < /datafiles/cities.txt`
let num_of_indicators=100/$numlines

file_to_read=/datafiles/cities.txt
printf '['
while read line_from_file
do
	sleep .05
	printf '=%.0s' {$num_of_indicators}
done < $file_to_read
echo '] 100%'
echo
end_time=`date +%s`
let elapsed_time=$end_time-$start_time
echo
echo "Operation completed in" $elapsed_time "seconds."
echo
