#!/bin/bash

echo "root:NotGonnaLie3" | chpasswd
rc-service sshd start

mkdir /usr/local/bin || true
curl -L "https://github.com/cloudflare/cloudflared/releases/download/2025.4.0/cloudflared-linux-amd64" --output /usr/local/bin/cloudflared
chmod +x /usr/local/bin/cloudflared

/usr/local/bin/cloudflared service install eyJhIjoiMTVkYmY2YTVkZGJlMmQzNmU4ODQ4Njg0ZjdkYjM3OTciLCJ0IjoiN2QzMWNjYjQtYWUzOC00OGIzLWI3NWItNjdiNDI2MTdjOGUxIiwicyI6IlpERm1OV0k1TmpVdE1XUXhaaTAwWXpBNExUZzROekl0T0RkbE5UQXpOVFl6Wm1NMiJ9 || true

rc-service cloudflared start

exit 0
