#!/bin/bash -x

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalworkinghours=0;
totalworkingdays=0;

function getworkhours() {
	case $1 in
		$IS_FULL_TIME)
			empHrs=8;
			;;
		$IS_PART_TIME)
			empHrs=4;
			;;
		*)
			empHrs=0;
	esac
}
function getEmpWage() {
	echo $(($1*$EMP_RATE_PER_HR))
}
while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH && $totalworkingdays -lt $NUM_WORKING_DAYS ]]
do
	((totalworkingdays++))
	empCheck=$((RANDOM % 3))
	getworkhours $empCheck
	totalEmpHr=$(($totalEmpHr+$empHrs))
	dailyWages[$totalworkingdays]=$(($empHrs*$EMP_RATE_PER_HR))
done
totalSalary="$( getEmpWage $totalEmpHr )"

echo ${dailyWages[@]} #usingArray
echo ${!dailyWages[@]} #usingDict


