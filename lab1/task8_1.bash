#!/bin/bash

sed 's/:x:/ /' /etc/passwd | sed 's/:.*//' | sort -nk 2
