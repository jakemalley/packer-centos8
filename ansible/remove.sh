#!/usr/bin/env bash

## Remove Ansible and cleanup

set -e
set -x

pip3 install pip-autoremove
ln -s /usr/bin/pip3 /usr/bin/pip
/usr/local/bin/pip-autoremove ansible -y
rm -f /usr/bin/pip
pip3 uninstall pip-autoremove -y

# Remove any other pollution
rm -rf /root/.cache
find /home/vagrant/ -maxdepth 1 -type d ! -name "vagrant" ! -name ".ssh" -exec rm -rf {} +