#!/usr/bin/env bash

## Install Ansible for provisioning

set -e
set -x

dnf -y update
dnf -y install python3
alternatives --set python /usr/bin/python3
pip3 install ansible
