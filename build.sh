#!/usr/bin/env bash
# Script to build packer-centos8

set -e
VERSION="0.0.6"
DESCRIPTION="CentOS 8 Image Built with Packer ($(packer version))"

echo "Building version v${VERSION}..."
if [ "$#" -eq 0 ]; then
    packer build -var "version=${VERSION}" -var "description=${DESCRIPTION}" "packer-centos8.json"
else
    packer build -var "version=${VERSION}" -var "description=${DESCRIPTION}" $@
fi
