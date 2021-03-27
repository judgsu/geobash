#!/bin/bash
clear
echo -e "Enter IP Address Or Leave Empty To Geolocate Your Own."
read ip
clear
curl -s "http://ip-api.com/json/$ip" | jq -r '.query,.country,.regionName,.city,.zip,.timezone,.isp,.org'
