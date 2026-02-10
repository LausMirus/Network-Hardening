#!/bin/bash
chmod +777 /etc/nftables.conf
cp -r /etc/nftables.conf ~/Desktop/nftables_backup.conf
sudo rm -f /etc/nftables.conf