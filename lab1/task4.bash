#!/bin/bash

if [[ "$PWD" == "$HOME" ]]
then
    echo "$HOME"
    exit 0
else
    echo "ERROR! Runned not from \"$HOME\""
    exit 1
fi
