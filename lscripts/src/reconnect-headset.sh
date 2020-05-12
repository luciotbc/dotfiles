#!/bin/sh

# harded coded to WH-1000XM3
address=70:26:05:E0:3E:CB

echo "Disconnect"
echo -e "disconnect $address" | bluetoothctl
sleep 5

echo "Connect"
echo -e "connect $address" | bluetoothctl
sleep 5

card=$(pacmd list-cards | grep -oP 'name: <\K(bluez[^>]*)')

echo "Switching $card to HSP"
pacmd set-card-profile $card headset_head_unit
sleep 1

echo "Switching $card to A2DP"
pacmd set-card-profile $card a2dp_sink
