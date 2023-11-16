#!/bin/bash

set -oue pipefail

echo ">>>>>> ENABLING TEST REPO <<<<<<"
sed -i -e '0,/enabled=0/s//enabled=1/' /etc/yum.repos.d/fedora-updates-testing.repo
