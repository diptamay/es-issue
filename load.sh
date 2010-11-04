#!/bin/bash

# path where the json files are
json_path="data"

if [ "$1" = "" ]; then
    echo "1) You need to specify the index you are loading to";
    echo "e.g.: es-test";
else
    for f in $json_path/*.json
    do
        echo "Processing $f ..."
        type=$(basename "$f" | cut -d'_' -f1)

        part=$(basename "$f" | cut -d'_' -f2)
        id=$(echo "$part" | cut -d'.' -f1)

        # take action on each file. $f store current file name
        ./send.sh $f $type $id $1
    done
fi