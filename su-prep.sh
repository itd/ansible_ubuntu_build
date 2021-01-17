#!/bin/bash
echo "$USER ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER
apt install python3-virtualenv -y
