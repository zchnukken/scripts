
# Simple script for logging CPU usage.
# Runs for $duration and samples every
# $rate seconds.

i="0";
duration="1000";
rate="1";
logfile="LOGFILE-$('date').txt";

#temp="";

while [ $i -lt $duration  ]
do
#timestamp=$(date | awk '{print $5}');
#temp=$(top -bn 1 | sed -n 3p);

echo $[100-$(vmstat 1 2|tail -1|awk '{print $15}')] >> "$logfile"

#echo $timestamp" "$temp >> "$logfile";
#echo $temp;


i=$[$i+1];
sleep $rate;
done
