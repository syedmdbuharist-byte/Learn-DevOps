#! /usr/bin/env bash
#
#
set -euo pipefail

LOG_FILE="/etc/ssh/sshd_config"
LOG_DIR="/var/log/nginx"

if [[ -f ${LOG_FILE} ]]; then
	echo "File is present"
else
	echo "File is NOT present"
fi

if [[ -d $LOG_DIR ]]; then
	echo "Directory is present"
else
	echo "Directory is NOT Present"
fi
