#!/bin/sh
# customized script for assignment 1
# Author: Arvin Chen

if [ -z "$1" ] || [ -z "$2" ]; then
	echo "either file path or the string were not specified"
	exit 1
else
	if [ ! -d "$(dirname "$1")" ]; then
		mkdir -p "$(dirname "$1")"
	fi

	echo $2 > $1
	if [ ! $? -eq 0 ]; then
		echo "file overwriting due to some error $?"
		exit 1
	fi
fi

