#!/bin/sh
echo
for f in $(ls /sys/class/power_supply/)
do
	echo "\033[31m$f"
	if test $f = AC
	then
		printf "\033[34mType \033[0m"
		cat /sys/class/power_supply/$f/type
		printf "\033[34mOnline \033[0m"
		cat /sys/class/power_supply/$f/online
	else
		printf "\033[34mStatus	\033[0m"
		cat /sys/class/power_supply/$f/status
		printf "\033[34mCapacity	\033[0m"
		cat /sys/class/power_supply/$f/capacity
	fi
done
printf "\033[0m\n"
