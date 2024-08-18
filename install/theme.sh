source ./install/vars

mkdir -p ~/.local/share/icons
mkdir -p ~/.local/share/fonts

cp -r ./assets/${ICON_THEME} ~/.local/share/icons/
cp -r ./assets/Bibata-Modern-Ice ~/.local/share/icons/
cp -r ./assets/${ICON_THEME} /usr/share/icons/
cp -r ./assets/Bibata-Modern-Ice /usr/share/icons/
cp ./assets/fonts/* ~/.local/share/fonts/

fc-cache

gtk-update-icon-cache ~/.local/share/icons/${ICON_THEME}

mkdir -p ~/.local/share/backgrounds/

cp ./assets/wallpapers/${WALL_PAPER_FILENAME} ~/.local/share/backgrounds/

gsettings set org.gnome.desktop.background picture-uri $HOME/.local/share/backgrounds/${WALL_PAPER_FILENAME}
gsettings set org.gnome.desktop.background picture-uri-dark $HOME/.local/share/backgrounds/${WALL_PAPER_FILENAME}
gsettings set org.gnome.desktop.background picture-options 'zoom'
