source ./vars

mkdir -p ~/.local/share/icons
mkdir -p ~/.local/share/fonts

cp -r ./assets/${ICON_THEME} ~/.local/share/icons/
cp -r ./assets/Bibata-Modern-Ice ~/.local/share/icons/
cp ./assets/fonts/* ~/.local/share/fonts/

fc-cache

gtk-update-icon-cache ~/.local/share/icons/${ICON_THEME}
