#!/bin/bash -x
isPartTime=1
isFullTime=2
EmpWagePerHour=20
numWorkingDays=20
totalWage=0
for (( day=1; day<=$numWorkingDays; day++ ))
	do
	EmpAttendance=$((RANDOM%3))
	case $EmpAttendance in
		$isPartTime)
			EmpHours=4
			;;
		$isFullTime)
			EmpHours=8
			;;
		*)
			;;
	esac
DailyWage=$(($EmpWagePerHour*$EmpHours))
echo "Daily wage for day" $day":" $DailyWage
done

