cp ./config/.gitconfig ~/

./install/desktop.sh
./install/yay.sh
./install/theme.sh
./install/terminal.sh
./install/packages.sh
./install/gsettings.sh
./install/gnome_extensions.sh
./install/east_asian_fonts.sh
./install/config.sh
# ./install/asdf.sh

chsh -s $(which zsh)
