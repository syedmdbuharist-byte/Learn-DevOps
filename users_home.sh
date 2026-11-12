#! /usr/bin/env bash
#
#
set -euo pipefail

#checking user passing the input or not

if [[ $# -lt 1 ]]; then
	echo "user didn't provide the input" >&2
       exit 1
fi

USERS=$1
BASEDIR="/tmp/mock_home"

if [[ ! -f ${USERS} ]]; then
	echo "user provided file is not present" >&2
	exit 1 
fi

mkdir -p ${BASEDIR}

while IFS= read -r USERLIST; do
	 [[ -z $USERLIST ]] && continue
		
		if [[ ! "${USERLIST}" =~ ^[a-z][a-z0-9_]*$  ]]; then
			echo "user name is in-valid" >&2
			continue
	        fi

USERHOME=${BASEDIR}/${USERLIST}

if [ -d $USERLIST ]; then
	echo "user home directory is already present"
else
	mkdir -p ${USERHOME}
fi

done < "${USERS}"


