#!/bin/sh

# harded coded to WH-1000XM3
device=00:05:16:5D:EF:E6
address=70:26:05:E0:3E:CB

echo "Disconnect ($device)"
echo -e "disconnect $address" | bluetoothctl
sleep 5

echo "Connect ($device)"
echo -e "connect $address" | bluetoothctl
sleep 5

card=$(pacmd list-cards | grep -oP 'name: <\K(bluez[^>]*)')

echo "Switching $card to HSP"
pacmd set-card-profile $card headset_head_unit
sleep 1

echo "Switching $card to A2DP"
pacmd set-card-profile $card a2dp_sink
