#!/bin/bash

echo "----------------------------------------"
echo "scp network file to IP: 192.168.1.$1"

sshpass -p 'jetson' scp -oStrictHostKeyChecking=no jetson_network.sh jetson@192.168.1.$1:~

echo ""




echo "----------------------------------------"
echo "Executing IP chagne from 192.168.1.$1 to $2"

sshpass -p 'jetson' ssh jetson@192.168.1.$1 "echo \"jetson\" | sudo -S bash ~/jetson_network.sh $2 " 

echo ""
echo "----------------------------------------"
