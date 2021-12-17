#!/bin/bash

pid=$(top -bn 1 -o %CPU | tail -n+8 | awk '{ if ($12 == "task4_loop.bash") print $1 }' | sort -nk 1 | head -1)
maxni=$(top -bn 1 -o NI | tail -n+8 | awk '{ if ($12 == "task4_loop.bash") print $4 }' | sort -rnk 1 | head -1)
renice +$(($maxni+10)) -p $pid
