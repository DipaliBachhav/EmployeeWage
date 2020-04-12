#!/bin/bash -x

echo "Welcome To Employee Wage Computation On Master Branch"

isPartTime=1
isFullTime=2
totalSalary=0
numWorkingDays=20
empWagePerHr=20

for (( day=1; day<=$numWorkingDays; day++ ))
do
empCheck=$(( RANDOM%3 ))
case $empCheck in
	$isFullTime)
		empHrs=8
		;;

	$isParTime)
		empHrs=4
		;;

	*)
		empHrs=0
		;;
esac
	salary=$(( $empHrs*$empWagePerHr ))
	totalSalary=$(( $totalSalary+$salary ))
done
