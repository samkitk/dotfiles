export ZSH=~/.oh-my-zsh
export ZSH_CUSTOM="$ZSH/custom"

# Oh-My-Zsh Install
cd ~

echo "Now you need accept the new shell by pressing Y when it asks you to. Then once your shell changes simply type 'exit' in the zsh shell to resume installing" | lolcat
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Oh-My-Zsh Installed ✔  " | lolcat

# PowerLevel10k Theme for Oh-My-Zsh
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

echo "Powerlevel10k Installed at $ZSH_CUSTOM/themes/powerlevel10k ✔" | lolcat

# Plugins for Oh-My-Zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

echo "Two plugins installed, syntax highlighting and autosuggestions  " | lolcat

# Now time to install Exa
cd ~/dotfiles && wget http://archive.ubuntu.com/ubuntu/pool/universe/r/rust-exa/exa_0.9.0-4_amd64.deb
sudo apt-get install ~/dotfiles/exa_0.9.0-4_amd64.deb
rm -rf ~/dotfiles/exa_0.9.0-4_amd64.deb

echo "Installed Exa ✨ " | lolcat

echo "-------------------------------------------------" |lolcat