sudo yay -S --needed --noconfirm hyprland brightnessctl gtk-engine-murrine

mkdir -p ~/.local/share/themes
mkdir -p ~/.local/share/icons
cp -r ./assets/Material-Black-Mango ~/.local/share/themes
cp -r ./assets/Tela ~/.local/share/icons

xdg-user-dirs-update

yay -S --needed --noconfirm nemo nemo-fileroller nemo-preview xdg-user-dirs