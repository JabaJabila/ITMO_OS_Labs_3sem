#!/bin/bash

regex="[[:alnum:]!#\$%&'\*\+/=?^_\`{}|~\.-]"
regex=$regex+"+@"+$regex+"+\."+"[[:alpha:]]{2,5}"
grep -EIosh "$regex" /etc/* | sed '$!s/$/,/' | tr "\n" " "  > emails.lst
