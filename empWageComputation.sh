#!/bin/bash -x

EmpWagePerHour=20
FullDayHour=8
PartTimeHour=4
DailyWageFullTime=$(($EmpWagePerHour*$FullDayHour))
DailyWagePartTime=$(($EmpWagePerHour*$PartTimeHour))
echo $DailyWageFullTime "is daily wage of full time employee"
echo $DailyWagePartTime "is daily wage of part time employee"
