#!/bin/bash -x
isPartTime=1
isFullTime=2
MaxHrsInMonth=160
EmpWagePerHour=20
numWorkingDays=20
totalEmpHrs=0
totalWorkingDays=0
function getWorkHourofEmployee(){
	case $1 in
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
while [[ $totalEmpHrs -lt $MaxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
	((totalWorkingDays++))
	EmpHours="$( getWorkHourofEmployee $((RANDOM%3)) )"
	totalEmpHrs=$(($totalEmpHrs+$EmpHours))
	echo $totalEmpHrs
done



