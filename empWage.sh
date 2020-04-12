#!/bin/bash -x

echo "Welcome To Employee Wage Computation On Master Branch"

#Calculating Employee isPresent Or Not

isPresent=1
randomCheck=$(( RANDOM%2 ))

if [[ $isPresent -eq $randomCheck ]]
then
	empWagePerHr=20
	empFullDayHrs=8
	salary=$(( $empFullDayHrs*$empWagePerHr ))
else
	salary=0;
fi

