#! /usr/bin/env bash
#
#
set -euo pipefail

SERVER_LIST="servers.txt"

if [[ ! -f $SERVER_LIST ]];
then
	echo "❌ Error: ${SERVER_LIST} not found!" >&2
	exit 1
fi

while IFS= read -r SERVER_NAME; do
	[[ -z $SERVER_NAME ]] && continue
        echo "checking the status of host: ${SERVER_NAME}"
done < "${SERVER_LIST}"



