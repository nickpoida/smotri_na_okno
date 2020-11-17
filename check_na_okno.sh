#/bin/bash
start_time=2100
start_date=$(date +"%Y%m%d")
end_time=0355
current_datetime=$(date +%s)
if [[ $start_time > $end_time ]]; then end_date=$(date --date="+1day" +"%Y%m%d")
else
end_date=$start_date
fi
fullStartTime="$start_date $start_time"
fullEndTime="$end_date $end_time"
fullStartTimeUnixTimeStamp=$(date +%s --date="$fullStartTime")
fullEndTimeUnixTimeStamp=$(date +%s --date="$fullEndTime")
if [[ $current_datetime  > $fullStartTimeUnixTimeStamp ]] && [[ $current_datetime <  $fullEndTimeUnixTimeStamp ]];
then
echo "v okne"
else
echo "vne okna"
fi
