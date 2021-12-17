#!/bin/bash

at now + 2 minutes -f ~/lab3/task1.bash
tail -n 0 -f ~/report &
pid=$!
(sleep 130 ; kill "$pid") &
