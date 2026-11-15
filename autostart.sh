# succeed once there is a default route, give up after $1 seconds
wait_for_network() {
    tries=0
    while [ "$tries" -lt "$1" ]; do
        ip route get 1.1.1.1 >/dev/null 2>&1 && return 0
        tries=$((tries + 1))
        sleep 1
    done
    return 1
}

# open a terminal that ssh-es into $2 and runs fleet, falling back to a
# login shell when fleet exits; $1 is the window class used by rules[]
ssh_fleet() {
    alacritty --class "$1,$1" -e ssh -t "$2" '$SHELL -lc "fleet --local; exec $SHELL -l"' &
}

configure_start_apps() {
    # tag placement is handled by rules[] in config.h (matched on WM_CLASS)
    firefox &
    obsidian &
    tidal-hifi &
    chromium &
    # custom class so only this terminal is pinned, not every alacritty window
    alacritty --class autostart-shell,autostart-shell &

    # network-dependent apps: wait up to 30s for a connection, skip if none
    (
        if wait_for_network 30; then
            thunderbird &
            ssh_fleet ssh-nixos theo@nixos
            ssh_fleet ssh-thinkcentre theo@thinkcentre
        fi
    ) &
}

feh --bg-fill best_wallpaper_jazz_2.png

setxkbmap -v -layout us,gr -option 'grp:alt_shift_toggle'

# NOTIFICATIONS
#/usr/lib/notification-daemon-1.0/notification-daemon &
dunst &

# STATUS BAR
# dwmblocks should be on PATH
dwmblocks &

picom &

configure_start_apps
