#!/bin/bash

for line1 in $(ps -Ao pid | tail -n+2)
do
    pid=$(echo $line1 | awk '{print $1}')
    if [[ -r /proc/"$pid"/io ]]
    then
	bytes=$(grep -s "rchar" /proc/"$pid"/io | grep -o "[[:digit:]]\+")
	echo "$pid $bytes"
    fi
done > tmp1.out
sleep 60
for line2 in $(ps -Ao pid | tail -n+2)
do
    pid=$(echo $line2 | awk '{print $1}')
    if [[ -r /proc/"$pid"/io ]]
    then
	bytes=$(grep -s "rchar" /proc/"$pid"/io | grep -o "[[:digit:]]\+")
	echo "$pid $bytes"
    fi
done > tmp2.out

cat tmp1.out | while read line
do
    pid=$(awk '{print $1}' <<< $line)
    bytes1=$(awk '{print $2}' <<< $line)
    bytes2=$(cat tmp2.out | awk -v epid=$pid '{if ($1 == epid) print $2}')
    let diff=$bytes2-$bytes1
    echo "$pid $diff"
done | sort -nrk2 | head -3 > tmp3.out
rm tmp1.out
rm tmp2.out
cat tmp3.out | while read line
do
    pid=$(awk '{print $1}' <<< $line)
    diff=$(awk '{print $2}' <<< $line)
    comm=$(ps -p "$pid" -o command | cat)
    echo "PID="$pid" : BYTES_READ="$diff" : "$comm""
done | cat
rm tmp3.out
