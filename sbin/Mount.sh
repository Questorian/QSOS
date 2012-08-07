#!/usr/bin/env sh 

#REFERENCE_SERVER=192.168.219.25
REFERENCE_SERVER=nqsaaa01

# script and binaries shares
mount -t nfs $REFERENCE_SERVER:bin /usr/local/bin
mount -t nfs $REFERENCE_SERVER:sbin /usr/local/sbin

# Debian OS reference shares - current build
mount -t nfs -r $REFERENCE_SERVER:debian1 /mnt/debian1
mount -t nfs -r $REFERENCE_SERVER:debian2 /mnt/debian2

# CPAN mount
mount -t nfs -r $REFERENCE_SERVER:cpan /mnt/cpan
