#!/bin/bash -x

EmpWagePerHour=20
FullDayHour=8
DailyWage=$(($EmpWagePerHour*$FullDayHour))
echo $DailyWage
