#!/bin/bash
for i in {1..100}
do
	echo $i
	
done
for i in {1..50}
do
	
	if ((i%2==0))
	then
		echo $i
	fi
done
ps -ef | awk '{print $2}'
df -h | awk '{print $3}'
