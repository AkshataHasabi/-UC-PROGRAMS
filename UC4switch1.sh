#!/bin/bash -x

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
randomCheck=$((RANDOM%3));

case $randomCheck in
        $isFullTime)
        	emphrs=8;
		;;
	$isPartTime)
         	emphrs=4;
		;;
	*)
	 	emphrs=0;
		;;
esac
salary=$(($emphrs*$empRatePerHr))

