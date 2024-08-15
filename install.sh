#!/bin/bash

chmod 600 ~/.ssh/id_rsa

sudo pacman -S --needed base-devel

# git clone https://aur.archlinux.org/yay-bin.git ~/yay-bin
# cd ~/yay-bin
# makepkg -si
# cd ~/dots

mkdir -p ~/.local/share/icons
mkdir -p ~/.local/share/fonts

cp -r ./assets/Reversal-blue-dark ~/.local/share/icons/
cp -r ./assets/Bibata-Modern-Ice ~/.local/share/icons/
cp ./assets/fonts/* ~/.local/share/fonts/
fc-cache

gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Reversal-blue-dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Ice'

yay -S --needed google-chrome slack-desktop code spotify-launcher flameshot \
  gnome-extensions-cli kooha hivemind-bin libmagick6 graphicsmagick pass \
  kitty zsh git-delta vlc docker docker-compose wireguard-tools asdf-vm \
  python gcc python-pip rust libffi libyaml openssl zlib openssl xz tk \
  adobe-source-han-sans-cn-fonts adobe-source-han-sans-jp-fonts adobe-source-han-sans-kr-fonts \
  adobe-source-han-sans-otc-fonts adobe-source-han-sans-tw-fonts adobe-source-han-serif-cn-fonts \
  adobe-source-han-serif-jp-fonts adobe-source-han-serif-kr-fonts adobe-source-han-serif-otc-fonts \
  adobe-source-han-serif-tw-fonts

if [[ $SHELL != *"zsh"* ]]; then
  chsh -s $(which zsh)
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

sudo cp ./scripts/flameshot-workaround /usr/bin/

cp ./config/gitconfig ~/.gitconfig
cp ./config/tool-versions ~/.tool-versions

sudo systemctl enable docker.service

cat ~/.tool-versions | cut -d' ' -f1 | grep "^[^\#]" | xargs -i asdf plugin add  {}
asdf install