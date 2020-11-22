#!/bin/bash
ipv6=$(curl -6 -s ifconfig.co --socks5 10.64.0.1:1080)
if [ ! $ipv6 ]; then
	#echo "No VPN"
	echo "IPV4:  $(curl -s ifconfig.co)"
else
	echo "IPV6:  $ipv6"
fi
