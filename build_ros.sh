#!/bin/bash -x
set -e

# Update the package list
sudo apt-get --yes update

wget http://strawlab.org/rosinstall/scripts/run_check_electric.bash -O /tmp/run_check_electric.bash
chmod a+x /tmp/run_check_electric.bash
source /tmp/run_check_electric.bash
