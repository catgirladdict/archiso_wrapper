# Archiso Wrapper
This is a simple tool to generate a custom Arch Linux ISO that automatically runs a given script, the most helpful use of this is to make an ISO which automatically runs your installation script.

# Usage
Open install_script.sh and edit the script to your liking, anything within the if statement will be run automatically when the image is booted. Once you're done, run generate_iso.sh as root.

The generation process will take some time, once it finishes the custom image "archlinux_custom.iso" should be appear in the directory you ran the script in.
