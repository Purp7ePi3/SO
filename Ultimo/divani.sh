#!/bin/bash

if (( $# != 2 )); then exit 1; fi

while read nome par1 par2 par3; do
	if (( par1 >= $1 && par2 <= $2 )); then
	echo $nome $par1 $par2 $par3
	fi
done < divani.txt

exit 0
