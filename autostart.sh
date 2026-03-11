# DISPLAY
#xrandr --output eDP-1 --same-as HDMI-1

#xrandr --output HDMI-1 --primary --output eDP-1 --off

feh --bg-fill tomatsu_cloud_sea.jpg

setxkbmap -v -layout us,gr -option 'grp:alt_shift_toggle'

# NOTIFICATIONS
#/usr/lib/notification-daemon-1.0/notification-daemon &
dunst &

# STATUS BAR
# dwmblocks should be on PATH
dwmblocks &
