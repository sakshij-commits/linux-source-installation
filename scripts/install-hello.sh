#!/bin/bash

# Exit immediately if any command fails.
set -e

# Move to /tmp so we don't clutter the home directory.
cd /tmp

# Download the GNU Hello source-code archive.
wget https://ftp.gnu.org/gnu/hello/hello-2.12.1.tar.gz

# Extract the .tar.gz archive.
tar -xzf hello-2.12.1.tar.gz

# Enter the directory containing the source code.
cd hello-2.12.1

# Check the system and prepare the source code for compilation.
./configure

# Compile the source code into an executable program.
make

# Install the compiled program on the system.
sudo make install

# Verify that the installation worked.
hello
