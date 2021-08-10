#!/bin/bash

# echo "jetson" | sudo -S echo "# interfaces(5) file used by ifup(8) and ifdown(8)" > /etc/network/interfaces
# echo "jetson" | sudo -S echo "# Include files from /etc/network/interfaces.d:" >> /etc/network/interfaces
# echo "jetson" | sudo -S echo "source-directory /etc/network/interfaces.d" >> /etc/network/interfaces
# echo "jetson" | sudo -S echo "" >> /etc/network/interfaces
# echo "jetson" | sudo -S echo "auto eth0" >> /etc/network/interfaces
# echo "jetson" | sudo -S echo "iface eth0 inet static" >> /etc/network/interfaces
# echo "jetson" | sudo -S echo "  address 192.168.1.$1" >> /etc/network/interfaces
# echo "jetson" | sudo -S echo "  netmask 255.255.255.0" >> /etc/network/interfaces
# echo "jetson" | sudo -S echo "  gateway 192.168.1.1" >> /etc/network/interfaces

# echo "jetson" | sudo -S systemctl restart networking


echo "# interfaces(5) file used by ifup(8) and ifdown(8)" > /etc/network/interfaces
echo "# Include files from /etc/network/interfaces.d:" >> /etc/network/interfaces
echo "source-directory /etc/network/interfaces.d" >> /etc/network/interfaces
echo "" >> /etc/network/interfaces
echo "auto eth0" >> /etc/network/interfaces
echo "iface eth0 inet static" >> /etc/network/interfaces
echo "  address 192.168.1.$1" >> /etc/network/interfaces
echo "  netmask 255.255.255.0" >> /etc/network/interfaces
echo "  gateway 192.168.1.1" >> /etc/network/interfaces

echo "jetson" | sudo -S systemctl restart networking
echo "jetson" | sudo -S reboot
