#!/usr/bin/env sh 

cp /etc/passwd /tmp/
sort -nt: -k 3 /tmp/passwd > /etc/passwd
