#!/bin/bash

tempfile=$(mktemp)

while read line ; do
	last=${line#\"*\"*\"*\"}
	res=${last%*\"*\"*}
	num=`grep "$res" stringhe.txt | wc -l`
	echo $res $num >> $tempfile
done < stringhe.txt


sort -k1 -n -r $tempfile | uniq

