yay -S --needed --noconfirm hyprland brightnessctl gtk-engine-murrine \
  sddm dunst pipewire wireplumber xdg-desktop-portal-hyprland polkit-gnome \
  qt5-wayland qt6-wayland gnome-keyring libsecret nvidia nvidia-utils egl-wayland

sudo systemctl enable sddm.service

# mkdir -p ~/.local/share/themes
# mkdir -p ~/.local/share/icons
# cp -r ./assets/Material-Black-Mango ~/.local/share/themes
# cp -r ./assets/Reversal-dark ~/.local/share/icons
# cp -r ./assets/Reversal ~/.local/share/icons
cp -r ./assets/Bibata-Modern-Ice ~/.local/share/icons
cp -r ./assets/Bibata-Modern-Ice-Hyprcursor ~/.local/share/icons

# xdg-user-dirs-update

# yay -S --needed --noconfirm nemo nemo-fileroller nemo-preview xdg-user-dirs

# gtk-update-icon-cache ~/.local/share/icons/Reversal
# gtk-update-icon-cache ~/.local/share/icons/Reversal
gtk-update-icon-cache ~/.local/share/icons/Bibata-Modern-Ice

