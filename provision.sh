#!/bin/bash 
apt-get update
apt-get upgrade -y
sudo apt-get install build-essential gcc make perl dkms linux-headers-$(uname -r)
sudo apt install -y ubuntu-mate-desktop