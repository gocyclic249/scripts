#! /bin/bash
PLAYING="$(mpc | head -n 1)"
DISPLAYED="$PLAYING"
while :
do
	until [ "$PLAYING" != "$DISPLAYED" ]
	do
		PLAYING="$(mpc | head -n 1)"
		sleep 1
	done
	DISPLAYED="$(mpc | head -n 1)"
	sudo papirus-write "$DISPLAYED" -s 30
done
