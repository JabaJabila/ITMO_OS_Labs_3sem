#!/bin/bash

read line
while [[ "$line" != "q" ]]
do
    output+="$line "
    read line
done
echo "$output"
