#!/bin/env bash

pacman -Sy neovim alacritty i3 polybar picom zsh dunst rofi htop feh thunar xclip discord pavucontrol neofetch pipewire pipewire-pulse pipewire-media-session google-chrome reflector exa

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
rm -rf $HOME/.config/neofetch && ln -s $HOME/dotfiles/neofetch ~/.config
