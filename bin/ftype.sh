#!/usr/bin/env sh 

file * | grep $1 | sed 's/:.*$//'
