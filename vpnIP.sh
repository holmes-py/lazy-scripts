#!/bin/bash
s1=$(ifconfig)
s2="tun0:"
if [[ $s1 == *"$s2"* ]]; then 
	echo $(ifconfig tun0 | grep destination | awk '{print $2}')
fi

