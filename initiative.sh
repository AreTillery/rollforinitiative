#!/bin/bash

# File to which to write your initiative result
file=~/initiative

# If it doesn't exist, create it. Leaving out this step makes cron throw an error when executing
if [ ! -e "$initiative" ] ; then
	touch "$file"
fi

roll1=$((1+RANDOM%20))
roll2=$((1+RANDOM%20))
echo $(( roll1 > roll2 ? roll2 : roll1)) > "$file"
