#!/bin/sh
# customized script for assignment 1
# Author: Arvin Chen

if [ -z "$1" ] || [ -z "$2" ]; then
	echo "either file path or the string were not specified"
	exit 1
else
	if [ ! -d "$1" ]; then
		echo "the file path is invalid"
		exit 1
	fi
fi

file_cnt=$(find "$1" -type f | wc -l)
match_line_cnt=$(grep -r $2 $1 | wc -l)
echo "The number of files are $file_cnt and the number of matching lines are $match_line_cnt"

