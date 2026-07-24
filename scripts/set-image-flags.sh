#!/bin/sh

echo "Setting image flags on ${1}, we are in $(pwd), ARTIFACTDIR=${ARTIFACTDIR}"

# Set "Platform required" attributes on bootloader partitions
sgdisk --attributes=1:set:0 --attributes=2:set:0 --attributes=3:set:0 "${ARTIFACTDIR}/$1"

# Set the type of the bootloader partitions to "Linux reserved"
sgdisk --typecode=1:8301 --typecode=2:8301 --typecode=3:8301 "${ARTIFACTDIR}/$1"
