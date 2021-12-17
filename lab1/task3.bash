#!/bin/bash

while [ 1 ]
do
    echo "-----  MENU -----"
    echo "1) nano"
    echo "2) vi"
    echo "3) links"
    echo "4) exit"
    read choice
    case $choice in
        1 ) nano
        ;;
        2 ) vi
        ;;
        3 ) links
        ;;
        4 ) exit 0
        ;;
        * ) echo "Unknown command!!!"
        exit 1
        ;;
    esac
done
