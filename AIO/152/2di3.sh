#!/bin/bash

while read uno due tre quattro ; do
	if [[  ${tre:1:1} != "" ]]; then
		echo ${tre:1:1}
	fi
done < /usr/include/stdio.h
