#!/bin/sh

# THIS MAY NOT WORK FOR ALL DISTROS
# See docs here for specific instructions for each distro
# https://docs.docker.com/engine/install/

. linux-profile.sh

# Install some required packages first
sudo apt update
sudo apt install -y \
 apt-transport-https \
 ca-certificates \
 curl \
 gnupg1 \
 software-properties-common

# Get the Docker signing key for packages
curl -fsSL https://download.docker.com/linux/$DISTRO/gpg | sudo apt-key add -

# Add the Docker official repos
sudo add-apt-repository \
   "deb [arch=$ARCH] \
   https://download.docker.com/linux/$DISTRO \
   $CODENAME \
   stable"

# Install Docker
# The aufs package, part of the recommended packages,
# won't install on Buster just yet,
# because of missing pre-compiled kernel modules.
# We can work around that issue by using --no-install-recommends
sudo apt update
sudo apt install -y --no-install-recommends \
   docker-ce \
   cgroupfs-mount