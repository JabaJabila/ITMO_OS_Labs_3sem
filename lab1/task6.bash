#!/bin/bash

awk '$3 == "(II)" {$1=""; $2=""; print}' /var/log/anaconda/X.log | sed 's/(II)/Information:/' > full.log
awk '$3 == "(WW)" {$1=""; $2=""; print}' /var/log/anaconda/X.log | sed 's/(WW)/Warning:/' >> full.log
less full.log
