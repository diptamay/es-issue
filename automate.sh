#!/bin/bash
for (( ; ; ))
do
	echo ""
	echo "LOADING"
	echo ""
   ./load.sh
   echo ""
   echo "SEARCHING"
   echo ""
   ./not_working.sh
   echo ""
   echo "DELETING"
   echo ""
   ./delete.sh
done