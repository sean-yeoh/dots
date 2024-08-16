gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
gnome-extensions enable launch-new-instance@gnome-shell-extensions.gcampax.github.com

gext install space-bar@luchrioh
gext install dash-to-panel@jderose9.github.com
gext install AlphabeticalAppGrid@stuarthayhurst
gext install appindicatorsupport@rgcjonas.gmail.com
gext install grand-theft-focus@zalckos.github.com

sudo cp ~/.local/share/gnome-shell/extensions/dash-to-panel\@jderose9.github.com/schemas/org.gnome.shell.extensions.dash-to-panel.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/AlphabeticalAppGrid\@stuarthayhurst/schemas/org.gnome.shell.extensions.AlphabeticalAppGrid.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/space-bar\@luchrioh/schemas/org.gnome.shell.extensions.space-bar.gschema.xml /usr/share/glib-2.0/schemas/
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

gsettings set org.gnome.shell.extensions.space-bar.behavior toggle-overview false
gsettings set org.gnome.shell.extensions.space-bar.behavior smart-workspace-names false
gsettings set org.gnome.shell.extensions.space-bar.shortcuts enable-activate-workspace-shortcuts false
gsettings set org.gnome.shell.extensions.space-bar.shortcuts enable-move-to-workspace-shortcuts true

gsettings set org.gnome.shell.extensions.dash-to-panel panel-positions '{"0":"TOP"}'
gsettings set org.gnome.shell.extensions.dash-to-panel panel-sizes '{"0":32}'
gsettings set org.gnome.shell.extensions.dash-to-panel trans-use-custom-opacity true
gsettings set org.gnome.shell.extensions.dash-to-panel hide-overview-on-startup true
gsettings set org.gnome.shell.extensions.dash-to-panel appicon-margin 4
gsettings set org.gnome.shell.extensions.dash-to-panel appicon-padding 4
gsettings set org.gnome.shell.extensions.dash-to-panel dot-style-focused 'DOTS'
gsettings set org.gnome.shell.extensions.dash-to-panel dot-style-unfocused 'DOTS'
gsettings set org.gnome.shell.extensions.dash-to-panel dot-size 0
gsettings set org.gnome.shell.extensions.dash-to-panel focus-highlight true
gsettings set org.gnome.shell.extensions.dash-to-panel panel-element-positions '{"0":[{"element":"showAppsButton","visible":false,"position":"stackedTL"},{"element":"activitiesButton","visible":false,"position":"stackedTL"},{"element":"leftBox","visible":true,"position":"stackedTL"},{"element":"taskbar","visible":true,"position":"stackedTL"},{"element":"centerBox","visible":true,"position":"centered"},{"element":"rightBox","visible":true,"position":"stackedBR"},{"element":"dateMenu","visible":true,"position":"stackedBR"},{"element":"systemMenu","visible":true,"position":"stackedBR"},{"element":"desktopButton","visible":true,"position":"stackedBR"}]}'

