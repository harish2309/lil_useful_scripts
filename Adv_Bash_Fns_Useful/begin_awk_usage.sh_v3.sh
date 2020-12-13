#!/bin/bash
awk -F ":"  \
'BEGIN {printf "%-30s %-3s %40s \n", "User","UID","Description"} 
NR==1,NR==40{printf "%-30s %3d %40s\n", $1,$3,$5}' /etc/passwd

