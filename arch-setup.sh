#!/bin/env bash

pacman -Sy neovim alacritty i3-wm i3blocks picom zsh dunst rofi htop feh thunar xclip discord pavucontrol neofetch pipewire pipewire-pulse pipewire-media-session reflector exa fd ripgrep qt5ct kvantum tree docker docker-compose 

yay -Sy google-chrome whitesur-icon-theme

ln -s $HOME/dotfiles/nvim ~/.config
ln -s $HOME/dotfiles/alacritty ~/.config
ln -s $HOME/dotfiles/i3 ~/.config
ln -s $HOME/dotfiles/polybar ~/.config
ln -s $HOME/dotfiles/picom ~/.config
ln -s $HOME/dotfiles/zsh ~/.config
ln -s $HOME/dotfiles/dunst ~/.config
ln -s $HOME/dotfiles/rofi ~/.config
ln -s $HOME/dotfiles/htop ~/.config
ln -s $HOME/dotfiles/wallpapers ~/.config
ln -s $HOME/dotfiles/lesspipe/.lesskey ~
ln -s $HOME/dotfiles/lesspipe/.lessfilter ~
rm -rf $HOME/.config/neofetch && ln -s $HOME/dotfiles/neofetch ~/.config
sudo ln -s $HOME/dotfiles/Fluent-Dark-compact /usr/share/themes
