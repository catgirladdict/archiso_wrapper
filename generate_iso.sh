#!/bin/sh
if [ "$EUID" -ne 0 ]
then
	echo "This script must be run as root."
	exit
fi

if ! command -v mkarchiso &> /dev/null
then
	echo "Archiso not found, install it with \"sudo pacman -S archiso\" on Arch Linux systems."
	exit
fi


sudo rm -rf /tmp/archiso-tmp
cp -r /usr/share/archiso/configs/releng archlive
sudo cp install_script.sh archlive/airootfs/root/.automated_script.sh
sudo mkarchiso -v -w /tmp/archiso-tmp archlive
mv out/* archlinux_custom.iso
sudo rm -rf archlive out
