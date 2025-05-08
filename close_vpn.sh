#!/bin/bash

# Path to the PID file
PID_FILE="$HOME/openvpn.pid"

if [ -f "$PID_FILE" ]; then
    # Read the PID from the file
    OPENVPN_PID=$(cat "$PID_FILE")

    # Terminate the OpenVPN process
    sudo kill $OPENVPN_PID

    # Remove the PID file
    rm "$PID_FILE"

    echo "OpenVPN process ($OPENVPN_PID) terminated."
else
    echo "PID file not found. OpenVPN may not be running."
fi

