#!/bin/bash
sudo rm -f /etc/resolv.conf
sudo systemctl restart NetworkManager
warp-cli connect
