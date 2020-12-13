#!/bin/bash
pacman -Qi | gawk '/^Name/ { x = $3}; \
/^Installed Size/ \
	{ 
	   sub(/Installed Size  *:/, ""); \
	   print x":" $0 
	}'
