#!/bin/bash
# author: Ahmad
# description: bash script to install OpenCV

dep_opencv="build-essential cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev"
 
# clear the screen
tput clear
 
# Move cursor to screen location X,Y (top left is 0,0)
tput cup 3 15
 
# Set a foreground colour using ANSI escape
tput setaf 3
echo "Welcome to A7's Installer..."
tput sgr0
 
tput cup 5 17
# Set reverse video mode
tput rev
echo "M A I N - M E N U"
tput sgr0
 
tput cup 7 15
echo "1. Install everything and Build OpenCV, kthnksbye"
 
#tput cup 8 15
#echo "menu item 2"
 
#tput cup 9 15
#echo "menu item 3"
 
#tput cup 10 15
#echo "menu item 4"
 
# Set bold mode
tput bold
tput cup 12 15
read -p "Enter your choice [1-???] " choice

tput clear
tput sgr0
tput rc

case $choice in
    1|one)

	length=$(echo $dep_ubuntu | wc -w)

	sleep 1 && echo "Downloading dependencies"

	for pkg in $dep_opencv; do
	    echo "Processing ${pkg}, Package $pkg of $length"
	    sudo apt-get install $pkg
	done

	cd ~/
	mkdir OpenCV

	sleep 1 && echo "Downloading OpenCV now..."

	git clone https://github.com/opencv/opencv.git
	git clone https://github.com/opencv/opencv_contrib.git

	cd ~/OpenCV
	mkdir build
	cd build
	
	echo "Now run cmake-gui and setup source path, build path and 	OPENCV_EXTRA_MODULES_PATH to ~/OpenCV/opencv/modules"

	;;
     *)

	echo "Well then, nothing to do here :)"
esac
