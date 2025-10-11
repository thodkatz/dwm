# DISPLAY
#xrandr --output eDP-1 --same-as HDMI-1

#xrandr --output HDMI-1 --primary --output eDP-1 --off

feh --bg-fill sky.png

# KEYBOARD - TRACKPAD
libinput-gestures start # trackpad gestures e.g. move back and forth browser pages

setxkbmap -v -layout us,gr -option 'grp:alt_shift_toggle'

languagetool --http --config ~/.config/languagetool/server.properties --port 8081 --allow-origin "*"

# NOTIFICATIONS
/usr/lib/notification-daemon-1.0/notification-daemon &

# STATUS BAR
# dwmblocks should be on PATH
dwmblocks &
