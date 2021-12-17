#!/bin/bash

mkfifo pipe
./task5_handler.bash &
./task5_generator.bash
rm pipe
