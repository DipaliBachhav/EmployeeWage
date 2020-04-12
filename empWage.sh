#!/bin/bash -x

echo "Welcome To Employee Wage Computation On Master Branch"

#Constant For Program
IS_Part_Time=1
IS_Full_Time=2
NUM_WORKING_DAYS=20
MAX_HRS_MONTH=4
EMP_WAGE_PER_HR=20

#Variables For Program
totalEmpHr=0
totalWorkingDays=0

function getWorkingHrs()
{
case $1 in
	$IS_FULL_TIME)
		workHrs=8
		;;

	$IS_PART_TIME)
		workHrs=4
		;;

	*)
		workHrs=0
		;;
esac
echo "$workHrs"
}
while [[ $totalWorkHr -lt $MAX_HRS_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	(( totalWorkingDays++ ))
	workHrs="$( getWorkingHrs $(( RANDOM%3 )) )"
	totalWorkHr=$(( $totalWorkHr+$workHrs ))
done
totalSalary=$(( $totalWorkHr*$EMP_WAGE_PER_HR ))
