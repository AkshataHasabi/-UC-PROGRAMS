#!/bin/bash -x

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalWorkHours=0;
totalWorkingDays=0;
function getWorkingHours() {
        case $1 in
                  $IS_FULL_TIME)
                        empHrs=8;
                        ;;
                  $IS_PART_TIME)
                        empHrs=4;
                        ;;
                  *)
                        empHrs=0
        esac
}

while [[ $totalWorkHours -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
        getWorkingHours $((RANDOM%3))
        totalWorkHours=$(($totalWorkHours + $empHrs));
done
totalSalary=$(($totalWorkHours*$EMP_RATE_PER_HR));
