#!/bin/bash

colors="$HOME/.config/alacritty/colors.yml"
schemes="$HOME/.config/alacritty/colorschemes"

declare -a options=($(ls ~/.config/alacritty/colorschemes/))

choice=$(printf '%s\n' "${options[@]}" | rofi -dmenu -i -l 20 -p 'Themes')
basename="${choice%.toml}"
echo $basename
# Alacritty 
cat ~/.config/alacritty/colorschemes/$basename.toml > ~/.config/alacritty/colors.toml

# Rofi
sed -i "s/@import.*/@import \"~\/.config\/rofi\/themes\/$basename.rasi\"/g" ~/.config/rofi/powermenu/powermenu.rasi
sed -i "s/@import.*/@import \"~\/.config\/rofi\/themes\/$basename.rasi\"/g" ~/.config/rofi/launcher/launcher.rasi
sed -i "s/@import.*/@import \"~\/.config\/rofi\/themes\/$basename.rasi\"/g" ~/.config/rofi/keyhint/keyhint.rasi

# Yazi
sed -i "s/\".*\"/\"$basename\"/g" ~/.config/yazi/theme.toml



