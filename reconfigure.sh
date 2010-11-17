#!/bin/bash

# path where the base mapping files are
#mappings_path="data/mappings/"
mappings_path=""
host="http://localhost:9200"

echo mappings_path = ${mappings_path}
echo host = ${host}

#types=(audio video)
types=(audio)
#types=(video)

for type in ${types[@]};
do
    curl -XDELETE http://localhost:9200/es-test/_query?q=itemType:$type&pretty=true
    curl -XDELETE http://localhost:9200/es-test/$type?pretty=true
    echo ""
done

curl -XPOST 'http://localhost:9200/_refresh?pretty=true'
echo ""
curl -XPOST 'http://localhost:9200/_optimize?only_expunge_deletes=true&pretty=true'
echo ""
curl -XPOST 'http://localhost:9200/_refresh?pretty=true'
echo ""

for type in ${types[@]};
do
    curl -XPUT -d@${mappings_path}$type.json ${host}/es-test/$type/_mapping?pretty=true
    echo ""
done

./load.sh
./not_working.sh

exit 0