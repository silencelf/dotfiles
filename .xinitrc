VBoxClient-all &

# Statusbar loop
while xsetroot -name "`date +'%F %R'` `uptime | sed 's/.*,//'`"
do
  sleep 5
done &

while true; do
  # wallpaper
  ~/.fehbg

	# log stderror to a file
	dwm 2> ~/.dwm.log
	# No error logging
	# dwm >/dev/null 2>&1
done
