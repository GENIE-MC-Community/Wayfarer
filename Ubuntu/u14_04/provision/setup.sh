#!/bin/bash

# make `debconf` use a frontend that exepcts no interactive input
#  http://serverfault.com/questions/500764/dpkg-reconfigure-unable-to-re-open-stdin-no-file-or-directory
sudo ex +"%s@DPkg@//DPkg" -cwq /etc/apt/apt.conf.d/70debconf
sudo dpkg-reconfigure debconf -f noninteractive -p critical

echo "Provisioning virtual machine..."

echo "Updating apt-get"
sudo apt-get update > /dev/null

echo "Installing Git"
sudo apt-get install git -y > /dev/null

echo "Installing Subversion"
sudo apt-get install subversion -y > /dev/null

echo "Installing autoconf"
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

echo "Installing gfortran"
sudo apt-get install gfortran -y > /dev/null

echo "Installing libxml2-dev"
sudo apt-get install libxml2-dev -y > /dev/null

echo "Installing dpkg-dev"
sudo apt-get install dpkg-dev -y > /dev/null

echo "Installing gdb because reasons"
sudo apt-get install gdb -y > /dev/null

echo "Installing GENIE"
git clone https://github.com/GENIEMC/lamp.git
pushd lamp
./rub_the_lamp.sh -s --root v5-34-30 --support-tag R-2_10_2.0 --no-roomu
