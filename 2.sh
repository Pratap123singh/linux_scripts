#!/bin/bash

echo "Students data record: "
echo "*************************************"

echo "To add student record enter 1."
echo "To delete student record enter 2."
echo "To find student record enter 3."
echo "To exit enter 4."
echo "--------------------------------------"
read choice
echo "--------------------------------------"
echo "rollnumber:name:semester:marks" >> database.txt
echo ""

case $choice in
	1)
		echo -n "enter number of students: "
		read nostudents
		for((i=0;i<nostudents;i++))
		do
			echo -n "enter roll number: " 
			read rollnumber
			echo -n "enter name: "
			read name
			echo -n "enter semester: "
			read semester
			echo -n "enter marks: "
			read marks
			echo "$rollnumber:$name:$semester:$marks" >> database.txt
			echo "" >> database.txt
		done
	;;
	2)
		echo  "enter record to delete: "
		echo -n "enter roll number: "
		read rollno
		cat database.txt | grep -v $rollno > database1.txt
		mv database1.txt database.txt
	;;
	3)	
		echo "To search record..."
		echo -n "enter roll number: "
		read rollno
		cat database.txt | grep $rollno
	;;	
	4)
		
	;;
esac
