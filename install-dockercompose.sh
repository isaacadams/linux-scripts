#!/bin/sh

# Install required packages
sudo apt update
sudo apt install -y \
       	python \
       	python-pip \
       	libffi-dev \
       	python-backports.ssl-match-hostname

# Install Docker Compose from pip
# This might take a while
sudo pip install docker-compose