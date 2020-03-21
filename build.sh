#!/usr/bin/env bash

set -e

# Script to build packer-centos8

PACKER_FILE="$1"
if [ -z "${PACKER_FILE}" ]; then
    PACKER_FILE="packer-centos8.json"
fi


VERSION="0.0.2"
DESCRIPTION="CentOS 8 Image Built with Packer"

echo "Building version v${VERSION}..."
packer build -var "version=${VERSION}" -var "description=${DESCRIPTION}" $PACKER_FILE
