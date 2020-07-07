#!/bin/bash -x
isPartTime=1
isFullTime=2
absent=0
EmpWagePerHour=20
numWorkingDays=20
DailyWage=0
DailyWages=0
totalWage=0
for (( day=1; day<=$numWorkingDays; day++ ))
do
	EmpAttendance=$((RANDOM%3))
	case $EmpAttendance in
		$isPartTime )
			EmpHours=4
			;;
		$isFullTime )
			EmpHours=8
			;;
		*)
			EmpHours=0
			;;
	esac
	DailyWage=$(($EmpWagePerHour*$EmpHours))
	echo "daily wage of employee in day" $day "is:" $DailyWage
	DailyWages=$DailyWages+$DailyWage
done
totalWage=$(($DailyWages*$numWorkingDays))
echo "Total wage of employee is:"$totalWage




