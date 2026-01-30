#!/bin/bash
source ./firewall.sh
source ./wireguard.sh

function requirements(){
    sudo pacman -S wireguard-tools
    wg_support = lsmod | grep wireguard > ~/Desktop/wg_support.txt
    if [[  ]]
