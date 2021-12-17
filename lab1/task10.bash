#!/bin/bash

man bash | grep -o "[[:alpha:]]\{4,\}" | tr [:upper:] [:lower:] | sort | uniq -c | sort -nrk 1 | head -3
