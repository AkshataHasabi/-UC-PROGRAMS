#!/bin/bash -x

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_RATE_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_OF_WORKING_DAYS=20;

totalEmpHr=0;
totalWorkingDays=0;

while [[ $totalEmpHr -lt $MAX_RATE_IN_MONTH && $totalWorkingDays -lt $NUM_OF_WORKING_DAYS ]]
do
	((toatlWorkingDays++))
	randomcheck=$((RANDOM % 3))
	case  $randomcheck in
                        $IS_FULL_TIME)
                                emphrs=8;
                                ;;
                        $IS_PART_TIME)
				emphrs=4;
                                ;;
                        *)
                                emphrs=0
         esac
done


