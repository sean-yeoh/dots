chmod 600 ~/.ssh/id_rsa

sudo pacman -S --needed base-devel gtk-engine-murrine

mkdir -p ~/.themes
cp -r ./assets/Kanagawa-BL-LB ~/.themes
mkdir -p ~/.config/gtk-4.0
cp -r ./assets/Kanagawa-BL-LB/gtk-4.0/assets ~/.config/gtk-4.0/
cp ./assets/Kanagawa-BL-LB/gtk-4.0/gtk-dark.css ~/.config/gtk-4.0/
cp ./assets/Kanagawa-BL-LB/gtk-4.0/gtk.css ~/.config/gtk-4.0/

gsettings set org.gnome.desktop.interface gtk-theme 'Kanagawa-BL-LB'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si