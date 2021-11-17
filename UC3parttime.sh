#!/bin/bash -x

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
randomCheck=$(( RANDOM % 3));

if (($isFullTime==$randomCheck))
then
	emphrs=8;
elif (($isFullTime==$randomCheck))
then
	 emphrs=4;
else
	 emphrs=0;
fi
