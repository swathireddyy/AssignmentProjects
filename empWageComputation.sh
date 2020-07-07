#!/bin/bash -x
isPartTime=1
isFullTime=2
Absent=0
EmpWagePerHour=20
numWorkingDays=20
totalWage=0
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
echo "Daily wage of the employee is:" $DailyWage
totalWage=$(($DailyWage*$numWorkingDays))
echo "Total wage for a month is:" $totalWage


