#!/bin/bash


#echo "jetson" | sudo -S reboot


sudo systemctl disable nvzramconfig
sudo fallocate -l 4G /mnt/4GB.swap
sudo chmod 600 /mnt/4GB.swap
sudo mkswap /mnt/4GB.swap
sudo echo "/mnt/4GB.swap swap swap defaults 0 0" > /etc/fstab
