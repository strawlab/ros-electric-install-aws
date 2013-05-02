#!/bin/bash -x
set -e

# Get the first ubuntu archive source (since on AWS we want to get local cache)

grep 'deb http://' /etc/apt/sources.list | head -n 1 | python -c "import sys,subprocess; main=sys.stdin.read().strip(); parts=main.split(); print parts; assert parts[0]=='deb'; assert 'main' in parts[3:]; multiverse = ' '.join(parts[:3]  + ['multiverse']); print multiverse; subprocess.check_call(['sudo','add-apt-repository',multiverse])"
