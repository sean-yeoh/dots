mkdir -p ~/.local/share/icons
mkdir -p ~/.local/share/fonts

cp -r ../assets/Reversal-blue-dark ~/.local/share/icons/
cp -r ../assets/Bibata-Modern-Ice ~/.local/share/icons/
cp ../assets/fonts/* ~/.local/share/fonts/

gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Reversal-blue-dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Ice'
