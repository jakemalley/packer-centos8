#!/usr/bin/env bash
# Script to cleanup after builds
set -e

rm -rf packer_cache
rm -f build/*.box
vagrant box remove file://build/virtualbox-centos8.box
