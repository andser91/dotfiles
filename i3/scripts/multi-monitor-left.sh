#!/bin/bash

xrandr --output HDMI-1 --auto
xrandr --output HDMI-1 --primary
xrandr --output HDMI-1 --left-of eDP-1
feh --bg-fill ~/.config/wallpapers/snowfall.jpg
