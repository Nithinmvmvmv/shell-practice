#!/bin/bash
NUMBER=$1

# -gt   --> greter then
# -lt   --> less then
# -eq   --> equal
# -ne   --> not equal

if [ "$NUMBER" -lt 10 ]
then
echo "Given $NUMBER is more then 10"
else
echo "Given $NUMBER is less then 10"
fi