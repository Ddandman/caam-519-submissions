
#!/bin/bash

function num_lines (path_set)
line_total = 0
{
for ind_path in path_set
do
	cd ind_path #enter the path
	for file in $(tree) #recursively shows all the files and 				     directories in a given directory
	do
		if [[ -r $file && -w $file ]]; then #if file is readable 
		
			$line_total=$line_total+$(wc -l | awk '$1')
			# if the line is a directory the number of lines = 				0, so it doesn't affect the line count
		else
			echo "$file: PERMISSION DENIED" #if unreadable
		fi

	done
done     
}



