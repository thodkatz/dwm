# picom is a wrapper of compton for Arch Linux
picom --config ~/.config/picom.conf & 

#xrandr --output eDP-1 --same-as HDMI-1

xrandr --output HDMI-1 --primary --output eDP-1 --off

setxkbmap -v -layout us,gr -option 'grp:alt_shift_toggle'

/usr/lib/notification-daemon-1.0/notification-daemon &

#languagetool --http --config ~/.config/languagetool/server.properties --port 8081 --allow-origin "*"

feh --bg-fill ~/MEGA/MEGA/media/pictures/wallpapers/kid_space.png

#nm-applet 2>&1 > /dev/null &
#stalonetray 2>&1 > /dev/null

# dwmblocks should be on PATH
dwmblocks &
