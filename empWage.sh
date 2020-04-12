#!/bin/bash -x

echo "Welcome To Employee Wage Computation On Master Branch"

isPartTime=1
isFullTime=2
empWagePerHr=20
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
salry=$(( $empHrs*$empWagePerHr ))

