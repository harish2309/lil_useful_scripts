#!/bin/bash
ina=$(shuf -n 1 -e `cat /home/harishk/tata `)
sudo wg-quick up $ina
sleep 3
sudo nextdns restart

