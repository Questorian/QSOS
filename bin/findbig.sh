#!/usr/bin/env sh 

BIG=1024k

(find / -type d -size +$BIG -print | xargs ls -hld 
find / -type f -size +$BIG -print | xargs ls -hl ) | ${PAGER:-more}
