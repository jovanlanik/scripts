#!/bin/sh
echo
for f in $(ls /sys/class/power_supply/)
do
	echo "\033[31m$f"
	printf "\033[34mType \033[0m"
	cat /sys/class/power_supply/$f/type
	case $f
	in
		BAT*)
		printf "\033[34mStatus	\033[0m"
		cat /sys/class/power_supply/$f/status
		printf "\033[34mCapacity	\033[0m"
		cat /sys/class/power_supply/$f/capacity
		;;
		AC*|ADP*)
		printf "\033[34mOnline \033[0m"
		cat /sys/class/power_supply/$f/online
	esac
done
printf "\033[0m\n"
