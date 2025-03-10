#!/bin/env bash
yay -yy
yay -S neovim
yay -S alacritty
yay -S i3blocks
yay -S picom
yay -S zsh
yay -S dunst
yay -S rofi
yay -S btop
yay -S feh
yay -S xclip
yay -S discord
yay -S pavucontrol
yay -S pipewire
yay -S pipewire-pulse
yay -S pipewire-media-session
yay -S reflector
yay -S eza
yay -S fd
yay -S ripgrep
yay -S qt5ct
yay -S kvantum
yay -S docker
yay -S docker-compose
yay -S bat
yay -S chafa
yay -S perl-image-exiftool
yay -S thefuck
yay -S zoxide
yay -S tlrc
yay -S yazi
yay -S tmux
yay -S atuin
yay -S jq
yay -S yq
yay -S htmlq
yay -S jless
yay -S httpie

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



