#!/bin/bash -x

echo "Welcome To Employee Wage Computation On Master Branch"

#Constant For Program
IS_Part_Time=1
IS_Full_Time=2
NUM_WORKING_DAYS=20
MAX_HRS_MONTH=10
EMP_WAGE_PER_HR=20

#Variables For Program
totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -lt $MAX_HRS_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
(( totalWorkingDays++ ))
empCheck=$(( RANDOM%3 ))
case $empCheck in
	$IS_Full_Time)
		empHrs=8
		;;

	$IS_Part_Time)
		empHrs=4
		;;

	*)
		empHrs=0
		;;
esac
	totalEmpHr=$(( $totalEmpHr+$empHrs ))
done

totalSalary=$(( $totalEmpHr*$EMP_WAGE_PER_HR ))
