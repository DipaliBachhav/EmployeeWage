#!/bin/bash -x

echo "Welcome To Employee Wage Computation On Master Branch"

#Calculating Part Time Wage Of Employee

isPartTime=1
isFullTime=2
empWagePerHr=20
randomCheck=$(( RANDOM%3 ))

if [[ $isFullTime -eq $randomCheck ]]
then
	empHrs=8
elif [[ $isPartTime -eq $randomCheck ]]
then
	empHrs=4
else
	empHrs=0
fi

salry=$(( $empHrs*$empWagePerHr ))

