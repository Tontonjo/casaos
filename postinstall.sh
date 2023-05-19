#!/bin/sh

# Tonton Jo - 2023
# Version 1.0

# Permit Root login:
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config

# Install Casaos
curl -fsSL https://get.casaos.io | sudo bash

# Install samba for hostname resolution
apt update -y
apt install -y samba
