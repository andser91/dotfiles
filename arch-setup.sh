#!/bin/env bash

yay -Sy neovim alacritty i3blocks picom zsh dunst rofi btop feh xclip discord pavucontrol neofetch \
  pipewire pipewire-pulse pipewire-media-session reflector eza fd ripgrep qt5ct kvantum docker docker-compose \
  bat chafa perl-image-exiftool thefuck zoxide tlrc yazi tmux atuin jq yq htmlq jless httpie

git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
yay -Sy google-chrome whitesur-icon-theme

ln -s $HOME/dotfiles/nvim ~/.config
ln -s $HOME/dotfiles/alacritty ~/.config
ln -s $HOME/dotfiles/i3 ~/.config
ln -s $HOME/dotfiles/polybar ~/.config
ln -s $HOME/dotfiles/picom ~/.config
ln -s $HOME/dotfiles/zsh/aliases ~/.config/zsh/
ln -s $HOME/dotfiles/dunst ~/.config
ln -s $HOME/dotfiles/rofi ~/.config
ln -s $HOME/dotfiles/htop ~/.config
ln -s $HOME/dotfiles/wallpapers ~/.config
ln -s $HOME/dotfiles/lesspipe/.lesskey ~
ln -s $HOME/dotfiles/lesspipe/.lessfilter ~
ln -s $HOME/dotfiles/git/.gitconfig ~
ln -s $HOME/dotfiles/bat ~/.config
ln -s $HOME/dotfiles/btop ~/.config
ln -s $HOME/dotfiles/tmux ~/.config
ln -s $HOME/dotfiles/yazi ~/.config
ln -s $HOME/dotfiles/zsh/.zshrc ~

mkdir ~/.config/i3blocks
if [[ "$1" == "desktop" ]];
then
  ln -s $HOME/dotfiles/i3blocks-desktop.conf ~/.config/i3blocks/i3blocks.conf
else
  ln -s $HOME/dotfiles/i3blocks-laptop.conf ~/.config/i3blocks/i3blocks.conf
fi



