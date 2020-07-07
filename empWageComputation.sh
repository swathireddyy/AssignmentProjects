#!/bin/bash -x
isPartTime=1
isFullTime=2
Absent=0
EmpWagePerHour=20
EmpAttendance=$((RANDOM%3))
case $EmpAttendance in
	$isPartTime)
		EmpHours=4
		;;
	$isFullTime)
		EmpHours=8
		;;
	*)
		EmpHours=0
		;;
esac
DailyWage=$(($EmpWagePerHour*$EmpHours))
echo $DailyWage
