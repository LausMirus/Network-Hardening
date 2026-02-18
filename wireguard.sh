#!bin/bash
set -e
source ./firewall.sh
source ./wireguard.sh

function requirements(){
    sudo pacman -S --noconfirm wireguard-tools
    wg_log=$(lsmod | grep wireguard | tee ~/Desktop/wg_support_log.txt)
    if [[ -z ${wg_log} ]];
    then
        echo "system doesn't have wireguard module"
        exit 1
    else 
        wg_path=$(command -v wg)
        wg_quick_path=$(command -v wg-quick)
        if [[ -n "${wg_path}" && -n "${wg_quick_path}" ]];
        then
            echo " wireguard path exist "
        else 
            echo " wireguard path doesnt exist in /usr/bin "
            exit 1
        fi
    fi
}
requirements