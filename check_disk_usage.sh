#!/bin/bash
dir="$1"
if [ -d $dir ]; then
    echo -e "Checking disk usage in $dir\n"
else
    echo "$dir does not exist, existing."
    exit 101
fi

echo -e "The heaviest subfolder of $dir is:"
top1=$(du -S $dir | sort -rn | head -n 1 | awk '{print $2 "\n"}')
disk=$(du -h $top1 | awk '{print $1}')
echo -e "$top1 with disk usage of $disk"
