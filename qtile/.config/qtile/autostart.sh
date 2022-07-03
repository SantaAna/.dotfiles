#!/bin/sh
feh --bg-scale /home/patrick/Pictures/backgrounds/dune.jpg
picom & disown # --experimental-backends --vsync should prevent screen tearing on most setups if needed
xmodmap /home/patrick/.xmodmap

# Low battery notifier
~/.config/qtile/scripts/check_battery.sh & disown

#Start bluman
blueman-applet & disown

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & disown # start polkit agent from GNOME
