# Install Skyrim Grub Theme
# Check if run as root
if (( $EUID == 0 )); then
# Remove old version and install the current one
	rm -r /boot/grub/themes/skyrim
	cp -r ./theme /boot/grub/themes/skyrim

	# Change every occurence of "Linux" and "Windows" in the bootmenu to Skyrim.
	sed -i 's/Linux/Skyrim/g' /boot/grub/grub.cfg
	sed -i 's/Windows/Skywindows/g' /boot/grub/grub.cfg

	echo "Consider buying The Elder Scrolls V: Skyrim for other platforms, too"
	exit 0
fi

echo "Hi. Todd here. I need you to run this as root to install Skyrim to your bootloader. I'm sorry"
exit 0





