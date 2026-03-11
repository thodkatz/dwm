configure_start_apps() {
    firefox &
    sleep 2
    xdotool key Super_L+shift+2

    obsidian &
    sleep 2
    xdotool key Super_L+shift+1

    thunderbird &
    sleep 2
    xdotool key Super_L+shift+9

    spotify &
    sleep 2
    xdotool key Super_L+shift+3

    chromium &
    sleep 2
    xdotool key Super_L+shift+4
}

configure_display_home() {
    if xrandr | grep "DP-1-1 connected"; then
        xrandr --output DP-1-1 --primary --output eDP-1 --off
    else
        xrandr --output eDP-1 --primary
    fi
}

# DISPLAY
#xrandr --output eDP-1 --same-as HDMI-1

#xrandr --output HDMI-1 --primary --output eDP-1 --off

configure_display_home

feh --bg-fill tomatsu_cloud_sea.jpg

setxkbmap -v -layout us,gr -option 'grp:alt_shift_toggle'

# NOTIFICATIONS
#/usr/lib/notification-daemon-1.0/notification-daemon &
dunst &

# STATUS BAR
# dwmblocks should be on PATH
dwmblocks &

picom &

configure_start_apps
