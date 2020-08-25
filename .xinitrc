VBoxClient-all &

# Statusbar loop
while true; do
	xsetroot -name "$(date)"
	sleep 1m # update time every minute
done &

while true; do
	# log stderror to a file
	dwm 2> ~/.dwm.log
	# No error logging
	# dwm >/dev/null 2>&1
done
