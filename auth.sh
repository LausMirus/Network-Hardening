#!/bin/bash
set -e
function auth() {
 sudo wg-quick up wg0
 sudo nft -f /etc/nftables.conf
 }
 
