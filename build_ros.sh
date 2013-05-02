#!/bin/bash -x
set -e

# Update the package list
sudo apt-get --yes update

RELEASE=electric

mkdir -p $HOME
sudo apt-get install --yes wget
wget http://strawlab.org/rosinstall/scripts/${RELEASE}_check_ros.bash -O ${RELEASE}_check_ros.bash
chmod a+x ${RELEASE}_check_ros.bash
./${RELEASE}_check_ros.bash
