#!/bin/sh

# Install necessary soft
sudo apt-get install gcc-multilib make perl qemu-system

# Create new link to [qemu-system-x86_64], which will call [qemu]
sudo ln /usr/bin/qemu-system-x86_64 /usr/bin/qemu

# Archive unpacking
tar -zxf pintos.tar.gz

# Copy executables to bin folder
cd pintos/src/utils
sudo cp -f backtrace pintos pintos-mkdisk pintos-set-cmdline Pintos.pm pintos-gdb ../misc/gdb-macros /usr/bin
sudo chmod 755 /usr/bin/backtrace /usr/bin/pintos /usr/bin/pintos-mkdisk /usr/bin/pintos-set-cmdline /usr/bin/pintos-gdb
sudo chmod 644 /usr/bin/Pintos.pm /usr/bin/gdb-macros

# Kernel building
cd ../threads
make