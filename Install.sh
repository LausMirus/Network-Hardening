#!/bin/bash
source ./firewall.sh
source ./wireguard.sh

function requirements(){
    sudo pacman -S wireguard-tools
    wg_support = lsmod | grep wireguard > ~/Desktop/wg_support.txt
    if [[ -z ${wg_support} ]];
    then
        echo "system doesn't support wireguard"
        exit
    else
        
