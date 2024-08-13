yay -S --needed gtk-engine-murrine

mkdir -p ~/.themes
cp -r ./assets/Kanagawa-BL-LB ~/.themes
mkdir -p ~/.config/gtk-4.0
cp -r ./assets/Kanagawa-BL-LB/gtk-4.0/assets ~/.config/gtk-4.0/
cp ./assets/Kanagawa-BL-LB/gtk-4.0/gtk-dark.css ~/.config/gtk-4.0/
cp ./assets/Kanagawa-BL-LB/gtk-4.0/gtk.css ~/.config/gtk-4.0/

