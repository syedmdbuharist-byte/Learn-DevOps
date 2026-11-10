#! /usr/bin/env bash
#
#
USER_NAME="Joe"
PASSWORD="123"

if [ -z $PASSWORD ];
then
	echo "Password field is empty"
fi

if [ -n $USER_NAME ];
then
	echo "customer name is $USER_NAME"
fi

