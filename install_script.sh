#!/bin/sh

if [[ $(tty) == "/dev/tty1" ]]; then
	#The code inside this if statement will run automatically when the image is booted
	echo Hello world!
fi
