#!/bin/bash
n=1
if [ $# -eq 0 ]; then
	requests_number=100
else
	requests_number=$1
fi;
while [ $((n)) -le $((requests_number)) ]
do
	curl -Lks http://192.168.99.100 > /dev/null
	if [ $((n%50)) -eq 0 ]; then
		echo .
	else
		echo -n .
	fi
	n=$(( $n + 1 ))
done
if [ $(( (n-1)%50 )) -ne 0 ]; then printf "\n"; fi
