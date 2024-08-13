chmod 600 ~/.ssh/id_rsa

sudo pacman -S --needed base-devel

git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

mkdir -p ~/.local/share/icons

cp -r ./assets/Reversal-blue-dark ~./.local/share/icons
cp -r ./assets/Bibata-Modern-Ice ~./.local/share/icons

gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Reversal-blue-dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Ice'

yay -S -needed google-chrome slack-desktop code spotify-launcher flameshot \
  gnome-extensions-cli kooha hivemind-bin libmagick6 graphicsmagick pass \
  kitty

