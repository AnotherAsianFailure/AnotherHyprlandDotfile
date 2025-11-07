#!/bin/bash

echo "Welcome to The Installer of AnotherHyprlandDotfile for Arch Linux."
echo ""
echo "This Script will Install Hyprland along with Most of The HyprEcosystem and Copy Configuration Files plus Some Desktop Utilities."
echo "However, Device Specific Packages such as Nvidia Drivers will have to be pre-installed by the User."
echo ""
echo "<!> WARNING: DO NOT RUN THIS SCRIPT AS ROOT!"
echo "<!> Also: This Script ONLY WORKS for Arch-Based Linux Distributions Using Pacman."
echo "(!) Note: This Script WILL OVERWRITE PREVIOUS CONFIG FILES, so please backup before preceding."
echo "(!) One Last Note: This Script Comes with ABSOLUTELY NO WARRANTY, so please don't blame this useless failure if your machine starts a house fire."
echo ""
echo "Press Any Key to Quit (or 'y' to continue): "

while true; do
	read -s -n 1 key
	if [ $key = "y" ]; then 
		echo ""
		break
	else
		echo ""
		exit
	fi
done

echo "Updating System and Installing Packages:"
sudo pacman -Syu --needed hyprland kitty dunst pipewire wireplumber xdg-desktop-portal-hyprland hyprpolkitagent qt5-wayland qt6-wayland noto-fonts ttf-hack-nerd oft-font-awesome woff2-font-awesome waybar wofi dolphin chromium hyprlock hypridle hyprsunset hyprland-qt-support hyprtoolkit hyprutils hyprcursor pavucontrol power-profiles-daemon
echo ""
echo "Copying Configuration Files:"
cp -vr ./resources/hypr/ ~/.config/
cp -vr ./resources/waybar/ ~/.config/
cp -v ./resources/kitty.conf ~/.config/kitty/
cp -vr ./resources/Bibata-Modern-Ice/ ~/.local/share/icons/
echo ""
echo "Congratulations! The Installation is complete. Please consider Rebooting your System. (It really helps!)"
