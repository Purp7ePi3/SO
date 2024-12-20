#!/bin/bash

echo "$$" 
if((${GLOBAL1} <= ${GLOBAL2})); then
	 GLOBAL1=${GLOBAL1}+1;
	./figlio.sh
fi
exit 0;


