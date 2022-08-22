feh --bg-fill ~/MEGA/MEGA/media/pictures/spike_bench.png

# picom is a wrapper of compton for Arch Linux
picom --config ~/.config/picom.conf & 

xrandr --output HDMI-1 --auto --left-of eDP-1 --mode 2580x1440

setxkbmap -v -layout us,gr -option 'grp:alt_shift_toggle'

# dwmblocks should be on PATH
dwmblocks &
