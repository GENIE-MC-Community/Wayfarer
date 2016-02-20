#!/bin/bash

# make `debconf` use a frontend that exepcts no interactive input
#  http://serverfault.com/questions/500764/dpkg-reconfigure-unable-to-re-open-stdin-no-file-or-directory
# sudo ex +"%s@DPkg@//DPkg" -cwq /etc/apt/apt.conf.d/70debconf
# sudo dpkg-reconfigure debconf -f noninteractive -p critical

echo "Provisioning virtual machine..."

echo "Updating yum"
sudo yum update -y > /dev/null

echo "Installing Git"
sudo yum install git -y > /dev/null

echo "Installing Subversion"
sudo yum install subversion -y > /dev/null

echo "Installing autoconf"
sudo yum install autoconf -y > /dev/null

# need to get epel?
# wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
# sudo rpm -ivh epel-release-7-5.noarch.rpm

echo "Installing libX11"
# sudo yum --enablerepo=epel install libX11-devel -y > /dev/null
sudo yum update libX11-devel -y > /dev/null

echo "Installing libXpm"
sudo yum install libXpm-devel -y > /dev/null

echo "Installing libXft"
sudo yum install libXft-devel -y > /dev/null

echo "Installing libXext"
sudo yum install libXext-devel -y > /dev/null

echo "Installing libpng"
sudo yum install libpng-devel -y > /dev/null

echo "Installing libjpeg"
sudo yum install libjpeg-devel -y > /dev/null

echo "Installing libtool"
sudo yum install libtool -y > /dev/null

echo "Installing gcc-c++, because, yeah, that is not there by default."
sudo yum install gcc-c++ -y > /dev/null

echo "Installing gfortran"
sudo yum install gcc-gfortran -y > /dev/null

echo "Installing libxml2-dev"
sudo yum install libxml2-devel -y > /dev/null

echo "Installing gdb because reasons"
sudo yum install gdb -y > /dev/null

echo "Installing GENIE"
git clone https://github.com/GENIEMC/lamp.git
pushd lamp
./rub_the_lamp.sh -s --root v5-34-30 --support-tag R-2_10_2.0 --no-roomu
