#!/bin/bash

# Copyright (C) 2017 Daniel Page <csdsp@bristol.ac.uk>
#
# Use of this source code is restricted per the CC BY-NC-ND license, a copy of 
# which can be found via http://creativecommons.org (and should be included as 
# LICENSE.txt within the associated archive or repository).

# software install: packaged software => dnf
sudo dnf --assumeyes install java-17-openjdk
sudo dnf --assumeyes install gtkwave
sudo dnf --assumeyes install xdg-utils

# software install: packaged software => conda
conda install --quiet --yes conda-forge/label/cf202003::iverilog

# software install: LogisimEvo
wget --quiet --output-document="logisim-evolution-3.8.0-1.x86_64.rpm" https://github.com/logisim-evolution/logisim-evolution/releases/download/v3.8.0/logisim-evolution-3.8.0-1.x86_64.rpm
sudo rpm --install --quiet ./logisim-evolution-3.8.0-1.x86_64.rpm
rm --force ./logisim-evolution-3.8.0-1.x86_64.rpm

# software install: ModuleSim
wget --quiet --output-document="modulesim-0.4.jar" http://github.com/TeachingTechnologistBeth/ModuleSim/releases/download/0.4/ModuleSim.jar
sudo install -D --target-directory="/opt/modulesim" ./modulesim-0.4.jar
rm --force ./modulesim-0.4.jar
