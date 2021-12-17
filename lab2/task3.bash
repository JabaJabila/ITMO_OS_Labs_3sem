#!/bin/bash

ps -Ao pid,ppid,start,args | awk -v epid=$$ '{if (epid != $1 && epid != $2) print}' | sort -rk3 | head -2
