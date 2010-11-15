#!/bin/bash
#for (( ; ; ))
#do
   ./index-setup.sh
	echo ""
	echo "LOADING"
	echo ""	
   ./load.sh
   curl -XPOST 'http://localhost:9200/es-test/_refresh'
   echo ""
   echo "SEARCHING"
   echo ""
   ./lineup.sh
   #echo ""
   #echo "DELETING"
   #echo ""
   #./delete.sh
#done