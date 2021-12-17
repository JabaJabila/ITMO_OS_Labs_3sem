#!/bin/bash

mkdir ~/test && { echo "catalog was created successfully" > ~/report ; touch ~/test/$(date  '+%F-%T') ; }
ping www.net_nekogo.ru || echo "$(date '+%F - %T') - host unavailable" >> ~/report

