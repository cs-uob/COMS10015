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

# software install: anaconda
sudo wget --quiet --output-document="Anaconda3-2025.06-1-Linux-x86_64.sh" https://repo.anaconda.com/archive/Anaconda3-2025.06-1-Linux-x86_64.sh
sudo bash ./Anaconda3-2025.06-1-Linux-x86_64.sh -b -f -p /opt/anaconda/3-2025
sudo rm --force ./Anaconda3-2025.06-1-Linux-x86_64.sh

sudo groupadd anaconda
sudo usermod --append --groups anaconda vagrant

sudo chown     -R root:anaconda /opt/anaconda
sudo chmod 770 -R               /opt/anaconda

source /opt/anaconda/3-2025/bin/activate && conda init && source ${HOME}/.bashrc

conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r
        
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
sudo usermod --append --groups vboxsf   vagrant
sudo usermod --append --groups dialout  vagrant
sudo usermod --append --groups wheel    vagrant

# system configuration: ntp
sudo systemctl enable --now chronyd
