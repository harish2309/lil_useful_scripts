#!/bin/bash
awk -F ":"  \
'BEGIN {printf "%-30s %-3s\n", "User","UID"} 
NR==1,NR==40{printf "%-30s %3d\n", $1,$3}' /etc/passwd

