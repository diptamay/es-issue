#!/bin/bash
for (( ; ; ))
do
	echo ""
	echo "LOADING"
	echo ""
   ./load.sh
   curl -XPOST 'http://localhost:9200/es-test/_refresh'
   echo ""
   echo "SEARCHING"
   echo ""
   ./not_working.sh
   echo ""
   echo "DELETING"
   echo ""
   ./delete.sh
   curl -XPOST 'http://localhost:9200/es-test/_refresh'
done