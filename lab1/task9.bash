#!/bin/bash

find /var/log -maxdepth 1 -name '*.log' -exec cat {} \; 2>/dev/null | wc -l
