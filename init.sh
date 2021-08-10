#!/bin/bash

sudo systemctl disable nvzramconfig
sudo fallocate -l 4G /mnt/4GB.swap
sudo chmod 600 /mnt/4GB.swap
sudo mkswap /mnt/4GB.swap
echo "/mnt/4GB.swap swap swap defaults 0 0" | sudo tee -a /etc/fstab

sudo reboot