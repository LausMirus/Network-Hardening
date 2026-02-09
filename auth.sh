#!/bin/bash

function auth(){
sudo wg-quick up wg0
sudo nft -f /etc/nftables.conf