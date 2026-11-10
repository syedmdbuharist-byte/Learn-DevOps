#! /usr/bin/env bash
#
#

set -euo pipefail
CONFIG_ENV="dev"

if [[ $CONFIG_ENV == prod ]];
then 
	echo "Danger: Executing changes on live infrastructure!"
else
	echo "🛠️ Sandbox: Safe test environment active."
fi

[[ -f "/etc/resolv.conf" ]] || sudo touch /etc/resolv.conf_bkp
