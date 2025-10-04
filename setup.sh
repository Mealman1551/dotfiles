#!/bin/bash

DOTFILES="$HOME/dotfiles"

FILES=(
    bashrc
    gitconfig
    vimrc
)

CONFIG_DIRS=(
    btop
    cava
    Code
    gtk-3.0
    gtk-4.0
    neofetch
    user-dirs.dirs
)

for file in "${FILES[@]}"; do
    if [ -e "$HOME/.$file" ]; then
        mv "$HOME/.$file" "$HOME/.$file.backup"
    fi
    ln -s "$DOTFILES/$file" "$HOME/.$file"
done

mkdir -p "$HOME/.config"

for config in "${CONFIG_DIRS[@]}"; do
    if [ -e "$HOME/.config/$config" ]; then
        mv "$HOME/.config/$config" "$HOME/.config/$config.backup"
    fi
    ln -s "$DOTFILES/config/$config" "$HOME/.config/$config"
done
