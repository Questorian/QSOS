#!/usr/bin/env sh 

REFERENCE_SERVER=192.168.219.25

#CPAN share
umount $REFERENCE_SERVER:cpan

#Debain OS Packages source shares
umount $REFERENCE_SERVER:debian2
umount $REFERENCE_SERVER:debian1

#script directories
umount $REFERENCE_SERVER:bin
umount $REFERENCE_SERVER:sbin
