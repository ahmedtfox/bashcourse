#!/bin/bash
askagain=1
while [[ $askagain = 1 ]]
do
    echo "Enter your name:"
    read name
    if [[ -z ${name} ]]
    then
        echo "empty input"
    else
    echo "Hi $name "
    exit
    fi
done