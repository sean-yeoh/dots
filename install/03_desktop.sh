yay -S --needed --noconfirm plasma-meta kde-graphics-meta kde-system-meta kde-utilities-meta

  

# sudo systemctl enable sddm.service
# sudo systemctl enable --now swayosd-libinput-backend.service

# mkdir -p ~/.local/share/themes
# mkdir -p ~/.local/share/icons
# cp -r ./assets/Material-Black-Mango ~/.local/share/themes
# cp -r ./assets/Reversal-dark ~/.local/share/icons
# cp -r ./assets/Reversal ~/.local/share/icons
# cp -r ./assets/Bibata-Modern-Ice ~/.local/share/icons
# cp -r ./assets/Bibata-Modern-Ice-Hyprcursor ~/.local/share/icons

# xdg-user-dirs-update

# gtk-update-icon-cache ~/.local/share/icons/Reversal
# gtk-update-icon-cache ~/.local/share/icons/Reversal-dark
# gtk-update-icon-cache ~/.local/share/icons/Bibata-Modern-Ice

# sudo cp -r ./assets/chili /usr/share/sddm/themes/
# sudo cp ./config/sddm/sddm.conf /etc/sddm.conf

# mkdir -p ~/.local/share/wallpapers
# sudo mkdir -p /usr/share/wallpapers

# sudo cp -r ./assets/Bibata-Modern-Ice /usr/share/icons/
# sudo cp -r ./assets/Bibata-Modern-Ice /usr/share/icons/
# sudo cp ./assets/wallpapers/wallpaper.png /usr/share/wallpapers/current.png
# cp ./assets/wallpapers/wallpaper.png ~/.local/share/wallpapers/current.png

# mkdir -p ~/.local/share/fonts
# cp ./assets/fonts/* ~/.local/share/fonts/
# sudo cp ./assets/fonts/* /usr/share/fonts/

# fc-cache

# sudo usermod -aG input $USER
# newgrp input