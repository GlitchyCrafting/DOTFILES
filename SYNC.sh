#!/bin/bash

rsync -a --delete ./BetterDiscord   ~/.config/
rsync -a --delete ./btop            ~/.config/
rsync -a --delete ./cava            ~/.config/
rsync -a --delete ./corectrl        ~/.config/
rsync -a --delete ./davinci-resolve ~/.config/
rsync -a --delete ./fish            ~/.config/
rsync -a --delete ./fontconfig      ~/.config/
rsync -a --delete ./godot           ~/.config/
rsync -a --delete ./goverlay        ~/.config/
rsync -a --delete ./jamesdsp        ~/.config/
rsync -a --delete ./kitty           ~/.config/
rsync -a --delete ./mako            ~/.config/
rsync -a --delete ./mpv             ~/.config/
rsync -a --delete ./neofetch        ~/.config/
rsync -a --delete ./nvim            ~/.config/
rsync -a --delete ./obs-studio      ~/.config/
rsync -a --delete ./pcmanfm         ~/.config/
rsync -a --delete ./qt5ct           ~/.config/
rsync -a --delete ./qt6ct           ~/.config/
rsync -a --delete ./rofi            ~/.config/
rsync -a --delete ./solvespace      ~/.config/
rsync -a --delete ./sway            ~/.config/
rsync -a --delete ./swaylock        ~/.config/
rsync -a --delete ./viewnior        ~/.config/
rsync -a --delete ./waybar          ~/.config/
rsync -a --delete ./wlogout         ~/.config/
rsync -a --delete ./wob             ~/.config/
rsync -a --delete ./yuzu            ~/.config/
rsync -a --delete ./starship.toml   ~/.config/


rsync -a --delete ./HOME_CONFIGS/.cargo     ~/
rsync -a --delete ./HOME_CONFIGS/.icons     ~/
rsync -a --delete ./HOME_CONFIGS/.profile   ~/
rsync -a --delete ./HOME_CONFIGS/.themes    ~/
rsync -a --delete ./HOME_CONFIGS/.gitconfig ~/
