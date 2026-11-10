#! /usr/bin/env bash
#
#

HOST_FILE="/etc/hosts"
TARGET_DIR="/etc/data"

# Hosts file check
#
[[ -f $HOST_FILE ]] && echo "host file is present in the server"


[[ -d $TARGET_DIR ]] || sudo mkdir -p /etc/data


