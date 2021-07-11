#!/bin/bash

# Update and Upgrade, Woohoo 🙌
sudo apt-get update
sudo apt-get upgrade -y

echo "Updated and Upgraded 🔥 \n"

# ZSH Figlet and lolcat Install
sudo apt install figlet lolcat zsh

echo "ZSH, Figlet, Lolcat Installed ✔ \n"

echo "Going to install OhMyZsh"
bash ~/dotfiles/install_zsh.sh

# Copy Paste This in the `.zshrc`
# if [ -x "$(command -v exa)" ]; then
#     alias ls="exa"
#     alias la="exa --long --all --group"
# fi

bash ~/dotfiles/symlink.sh

source ~/.zshrc

figlet -c Done | lolcat