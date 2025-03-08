#!/bin/bash

IMAGE=`grep dark ~/.config/yazi/theme.toml | awk '{gsub("\"","")}{print $3}'`
feh --bg-fill ~/.config/wallpapers/$IMAGE.jpg
