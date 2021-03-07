#!/usr/bin/env sh

# PYWAL #
wal -a 85 -i /home/jaspernet/.config/wallpapers/main/wallpaper.jpg

# #---Bar---# #

#Terminate Existing Instances
#killall -q [name here]
#killall -q back4.sh
killall -q conky
killall -q picom
killall -q telegram-desktop
killall -q tint2
#Launch or relaunch instance

picom --experimental-backends
cd /home/$USER/.config/conky/ && conky -c conky.conf
#telegram-desktop -startintray 
#tint2
