#!/bin/bash

echo "Welcome to A7's Installer.."

dep_ubuntu="git peek"

length=$(echo $dep_ubuntu | wc -w)

for pkg in $dep_ubuntu; do
    echo "Processing ${pkg}, Package $pkg of $length"
    sudo apt-get install $pkg
done
