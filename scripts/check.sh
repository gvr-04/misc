#!/bin/bash
# checks for packages installed or not

packages=(git lazygit github-cli wl-clipboard less ttf-font-awesome ttf-jetbrains-mono python-pillow grim jq slurp libnotify hyprpaper neovim wl-clipboard udisks2)
missing=()

for pkg in "${packages[@]}"; do
    if ! pacman -Q "$pkg" &> /dev/null; then
        missing+=("$pkg")
    fi
done

if [ ${#missing[@]} -eq 0 ]; then
    echo -e "\nAll packages are installed.\n"
else
    echo -e "\n pacman -S ${missing[@]}\n"
fi

