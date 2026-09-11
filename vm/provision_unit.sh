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

# software install: iverilog
wget --quiet --output-document="iverilog-13_0.tar.gz" https://github.com/steveicarus/iverilog/archive/refs/tags/v13_0.tar.gz
tar --extract --file ./iverilog-13_0.tar.gz
cd ./iverilog-13_0 
sh ./autoconf.sh && ./configure --prefix="/opt/iverilog/13.0" && make && sudo make install
cd ..
rm --force --recursive ./iverilog-13_0.tar.gz ./iverilog-13_0

# software install: LogisimEvo
wget --quiet --output-document="logisim-evolution-4.1.0-1.x86_64.rpm" https://github.com/logisim-evolution/logisim-evolution/releases/download/v4.1.0/logisim-evolution-4.1.0-1.x86_64.rpm
sudo rpm --install --quiet ./logisim-evolution-4.1.0-1.x86_64.rpm
rm --force ./logisim-evolution-4.1.0-1.x86_64.rpm
