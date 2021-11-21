#!/bin/bash
inta=$(ifconfig| grep -i UNSPEC | cut -d ' ' -f1)
sudo wg-quick down $inta
