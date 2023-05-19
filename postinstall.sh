#!/bin/sh

# Tonton Jo - 2023
# Version 1.0

# Permit Root login:
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config

# Setup casaos installation
# Download startup script and make it executable
wget -O /root/casaos_installation.sh https://github.com/Tontonjo/casaos/raw/main/casaos_installation.sh
chmod +x /root/casaos_installation.sh

# Add script to be executed on boot then removed once ran
echo "#!/bin/sh -e
/root/casaos_installation.sh
rm -f /etc/rc.local 
exit 0" > /etc/rc.local
chmod 755 /etc/rc.local

# Install samba for hostname resolution
# apt update -y
# apt install -y samba
