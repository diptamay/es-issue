#!/bin/bash

# path where the base mapping files are
mappings_path="data/mappings"
host="http://localhost:9200"

echo mappings_path = ${mappings_path}
echo host = ${host}

curl -XPUT ${host}/es-test

types=(video section lineup audio)

for type in ${types[@]};
do
    curl -XPUT -d@${mappings_path}/$type.json ${host}/es-test/$type/_mapping
done

exit 0