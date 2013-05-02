#!/bin/bash -x
set -e

apt-get --yes install wget

# Download the keyring
wget --output-document=/tmp/astraw-archive-keyring.gpg http://debs.strawlab.org/astraw-archive-keyring.gpg

# Install the keyring
sudo /usr/bin/apt-key add /tmp/astraw-archive-keyring.gpg

# Download the sources.list
echo "deb http://debs.strawlab.org/ $(lsb_release -cs)/" | sudo tee /etc/apt/sources.list.d/strawlab-public.list
echo "deb-src http://debs.strawlab.org/ $(lsb_release -cs)/" | sudo tee -a /etc/apt/sources.list.d/strawlab-public.list

# Update the package list
sudo apt-get --yes update

wget http://strawlab.org/rosinstall/scripts/run_check_electric.bash -O /tmp/run_check_electric.bash
chmod a+x /tmp/run_check_electric.bash
source /tmp/run_check_electric.bash
