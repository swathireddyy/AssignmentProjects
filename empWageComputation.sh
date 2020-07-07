#!/bin/bash -x
isPartTime=1
isFullTime=2
EmpWagePerHour=20
numWorkingDays=20
DailyWage=0
totalWage=0
function getWorkHourofEmployee(){
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
	echo $EmpHours
}
getWorkHourofEmployee
EmpAttendance=$((RANDOM%2))
DailyWage=$(($EmpWagePerHour*$EmpHours))
totalWage=$(($DailyWage*$numWorkingDays))
echo "daily wage of employee is:"$DailyWage
echo "Total wage of employee is:"$totalWage




