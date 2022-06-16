#!/bin/sh -x

export LANG=en_US.UTF-8
export ENV=$HOME/.kshrc
export MOZ_ACCELERATED=1
export MOZ_WEBRENDER=1
# Disable Core dumping
ulimit -5c 0


xrdb -merge $HOME/.Xresources &
feh --bg-fill /home/jx/Pictures/Wallpapers/solarfixed.png &
xrandr --output HDMI-1 --mode 2560x1080 --rate 74.99 &
xidle &
exec xterm -fs 12 -bg "#002b36" -fg "#839496" -name termbar -class termbar -T termbar -e ~/Git/termbar/termbar &
exec cwm
