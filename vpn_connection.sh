#!/bin/bash
PID_FILE="./openvpn.pid"

sudo openvpn --config ./linux.ovpn --auth-user-pass vpn-credentials.txt > vpn_log.txt &
OPENVPN_PID=$!
echo $OPENVPN_PID > "$PID_FILE"

echo "ran vpn command"
echo "waiting for vpn connection to establish"


sleep 10

sudo cp /etc/resolv.conf /etc/resolv.conf.bak
echo $OPENVPN_PID "pid"
echo "nameserver 10.4.20.204" | sudo tee /etc/resolv.conf

echo "vpn connection should be established"

