#!/bin/bash
awk -F ":"  'NR==1,NR==20{printf "%-30s %3d\n", $1,$3}' /etc/passwd

