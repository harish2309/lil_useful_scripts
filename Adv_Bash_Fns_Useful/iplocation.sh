#!/bin/bash
IP=$(curl -sS ifconfig.co)
ccode=$(curl -sS ip-api.com/json/$IP | jq '.countryCode') 
rname=$(curl -sS ip-api.com/json/$IP | jq '.regionName')
colls=$(echo "$ccode, $rname" | sed 's/\"//g')
echo "<txt><span weight=\"bold\" fgcolor=\"#432ADF\">"  $colls"</span></txt>"
echo "<tool></tool>"
