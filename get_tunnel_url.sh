#!/bin/bash
mkdir -p data
docker compose logs cloudflared | grep "trycloudflare.com" | grep -o "https://[^ ]*trycloudflare.com" | head -n 1 > data/tunnel_url.txt
if [ -s data/tunnel_url.txt ]; then
    echo "Tunnel URL found:"
    cat data/tunnel_url.txt
else
    echo "Tunnel URL not found."
    exit 1
fi