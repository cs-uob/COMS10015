#!/bin/bash

# Copyright (C) 2017 Daniel Page <csdsp@bristol.ac.uk>
#
# Use of this source code is restricted per the CC BY-NC-ND license, a copy of 
# which can be found via http://creativecommons.org (and should be included as 
# LICENSE.txt within the associated archive or repository).

# software install: configure repos.
sudo dnf --assumeyes install epel-release
sudo dnf config-manager --set-enabled powertools
sudo dnf --assumeyes update
        
# software install: packaged software
sudo dnf --assumeyes install autoconf
sudo dnf --assumeyes install chrony
sudo dnf --assumeyes install dpkg
sudo dnf --assumeyes install emacs
sudo dnf --assumeyes install gcc 
sudo dnf --assumeyes install gcc-c++
sudo dnf --assumeyes install git
sudo dnf --assumeyes install git-lfs
sudo dnf --assumeyes install glibc-static
sudo dnf --assumeyes install gperf
sudo dnf --assumeyes install kernel-headers 
sudo dnf --assumeyes install kernel-devel
sudo dnf --assumeyes install libstdc++-static
sudo dnf --assumeyes install make
sudo dnf --assumeyes install patch
sudo dnf --assumeyes install python3
sudo dnf --assumeyes install python3-devel
sudo dnf --assumeyes install python3-pip
sudo dnf --assumeyes install python3-wheel
sudo dnf --assumeyes install wget
sudo dnf --assumeyes install xauth

# system configuration: group membership
sudo usermod --append --groups vboxsf  vagrant
sudo usermod --append --groups dialout vagrant
sudo usermod --append --groups wheel   vagrant

# system configuration: ntp
sudo systemctl enable --now chronyd

# system configuration: file system structure
sudo mkdir --parents /opt/software
