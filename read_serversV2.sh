#! /usr/bin/env bash
#
#
set -euo pipefail

if [[ $# -lt 1  ]];
then
	echo "user didn't provide the input file" >&2
	exit 1
fi

SERVER_LIST="$1"

if [[ ! -f ${SERVER_LIST} ]]; then
echo "user provided file is not present" >&2
exit 1
fi

while IFS= read -r SERVER_NAME; do
	[[ -z $SERVER_NAME ]] && continue
	echo "The host name is : $SERVER_NAME"
done < "$SERVER_LIST"

