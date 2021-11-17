#!/bin/bash -x

isPresent=1
randomCheck=$((RANDOM%2));
#CheckPresent=1;
if (($isPresent==$randomCheck ))
then
	echo "Employee is present";
else
	echo "Employee is absent";
fi
