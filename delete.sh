#!/bin/bash

# path where the json files are
json_path="data"

for f in $json_path/*.json
do
	echo "Processing $f ..."
	type=$(basename "$f" | cut -d'_' -f1)

	part=$(basename "$f" | cut -d'_' -f2)
	id=$(echo "$part" | cut -d'.' -f1)

	# take action on each file. $f store current file name
	curl -XDELETE http://localhost:9200/es-test/$type/$id
done