#!/bin/bash -x

#Calculating Employee isPresent Or Not

isPresent=1
randomCheck=$(( RANDOM%2 ))

if [[ $isPresent -eq $randomCheck ]]
then
	echo "Employee Is Present"
else
	echo "Employee Is Absent"
fi

