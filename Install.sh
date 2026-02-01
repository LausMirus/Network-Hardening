#!/bin/bash
source ./firewall.sh
source ./wireguard.sh

function requirements(){
    sudo pacman -S wireguard-tools
    wg_log = lsmod | grep wireguard > ~/Desktop/wg_support_log.txt
    if [[ -z ${wg_log} ]];
    then
        echo "system doesn't have wireguard module"
        exit
    else {
        
        wg_path = command -v wg && command -v wg-quick >/dev/null 2>&1
        if [[ ${wg_path} == 1 ]];
        then
