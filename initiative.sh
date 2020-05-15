#!/bin/bash

if [ "$1" == "wall" ]; then
	# File to which to write your initiative result
	file=~/initiative

	# If it doesn't exist, create it. Leaving out this step makes cron throw an error when executing
	if [ ! -e "$file" ] ; then
		touch "$file"
	fi
fi

roll1=$((1+RANDOM%20))
roll2=$((1+RANDOM%20))
res=`$(( roll1 > roll2 ? roll2 : roll1))`
if [ "$1" == "wall" ]; then
	echo "ROLL INITIATIVE: $res" | wall -n
else
	echo $res > "$file"
fi
