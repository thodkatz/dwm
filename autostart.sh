feh --bg-fill ~/MEGA/media/pictures/nebula.jpg

# picom is a wrapper of compton for Arch Linux
picom --config ~/.config/picom.conf & 

xrandr --output HDMI-1 --auto --right-of HDMI-2


# dwmblocks should be on PATH
dwmblocks &
