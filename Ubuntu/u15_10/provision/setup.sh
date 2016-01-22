#!/bin/bash

echo "Provisioning virtual machine..."

echo "Installing Git"
sudo apt-get install git -y > /dev/null

echo "Installing Subversion"
sudo apt-get install subversion -y > /dev/null

echo "Installing Subversion"
sudo apt-get install autoconf -y > /dev/null

echo "Installing libX11"
sudo apt-get install libx11-dev -y > /dev/null

echo "Installing libXpm"
sudo apt-get install libxpm-dev -y > /dev/null

echo "Installing libXft"
sudo apt-get install libxft-dev -y > /dev/null

echo "Installing libXext"
sudo apt-get install libxext-dev -y > /dev/null

echo "Installing libpng"
sudo apt-get install libpng-dev -y > /dev/null

echo "Installing libjpeg"
sudo apt-get install libjpeg-dev -y > /dev/null

echo "Installing libtool"
sudo apt-get install libtool -y > /dev/null

echo "Installing GENIE"
git clone https://github.com/GENIEMC/lamp.git
pushd lamp
./rub_the_lamp.sh -s --root v5-34-30 --support-tag R-2_10_2.0
