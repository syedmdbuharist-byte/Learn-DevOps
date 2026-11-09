#!/usr/bin/env bash
#
#
DATA_CENTER="us-east-1a"
NODE_ID="123east-web"

echo "Details: Deploying the node ${NODE_ID} in the ${DATA_CENTER}"

sudo mkdir -p /var/log/nginx/
LOG_PATH="/var/log/nginx/access log.txt"
sudo touch "$LOG_PATH"
