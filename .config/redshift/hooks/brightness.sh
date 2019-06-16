#!/bin/sh

# Set brightness via xbrightness when redshift status changes

# Set brightness values for each status.
# Range from 1 to 100 is valid
brightness_day=100
brightness_transition=50
brightness_night=10
# Set fade time for changes to one minute
fade_time=60000

if [ "$1" = period-changed ]; then
	case $3 in
		night)
			light -S $brightness_night -time $fade_time
			;;
		transition)
			light -S $brightness_transition -time $fade_time
			;;
		daytime)
			light -S $brightness_day -time $fade_time
			;;
	esac
fi
