#!/bin/bash -x

random=$((RANDOM))
employeeAttendance=$(( $random%2 ))
if [ $employeeAttendance -eq 1 ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
