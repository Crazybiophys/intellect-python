#!/bin/bash
dir="$1"
if [ -d $dir ]; then
    echo -e "Checking disk usage in $dir\n"
else
    echo "$dir does not exist, existing."
    exit 101
fi
