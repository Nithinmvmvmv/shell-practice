#!/bin/bash
echo "Printing the disk usage or more then 80% disk used files"
df -h | awk 'NR>1 && int($5) < 80 print {print $6 "is" $5 "full"}'


echo "disk usage"