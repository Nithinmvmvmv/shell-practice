#!/bin/bash
echo "Printing the disk usage or less then 80% disk used files"
df -h | awk 'NR>1 && int($5) < 80 { print $6  "  is "  $5  "  not full"}'


echo "disk usage"

echo "Printing file systems where disk usage is more than 80%"

df -h | awk 'NR>1 && int($5) > 80 { print $6  "  is "  $5 "  full" }'