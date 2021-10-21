#!/bin/bash

if [[ $1 == "-h" ]]; then
	echo "Poetry.sh program generates a table that contains..."
	#Display if -h flag is passed

flag = 0
student_array={"Student_ID"}
poem_array={"Favorite poem"}
first_7_chars_poems={"First_7_chars_of_poem"}

while IFS= read -r line; do

    if [ ["$line" == "Student*"] -o ["$line" == "student*"] ]; #some are mis-spelled
    then
        flag=1
        student_array+="$line" #the line is the student's name
        #store student
        
    elif [ $flag == 1 ]
        poem_arry+="$line"
        first_7_chars_poems+="$line:0:7" 
        #If line isn't empty store full name and first 7 chars
        #If line is empty this will just be nothing
       flag=0 #next line doesn't have anything performed on it
done < poetry.txt

#final step is to print outputs
echo "$student_array"
echo "$poem_array"
echo "$first_7_chars_poems"

