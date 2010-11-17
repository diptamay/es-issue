curl -XGET 'http://localhost:9200/es-test/lineup/_search?pretty=true' -d '
{
    "query" : {
        "bool" : {
            "must" : {
                "field" : {
                    "tags.player_434636_pos.value" : "8" 
                }
            } 
        } 
    },
    "size" : 10
}'

curl -XGET 'http://localhost:9200/es-test/lineup/_search?pretty=true' -d '
{
    "query" : {
        "bool" : {
            "must" : {
                "field" : {
                    "tags.team_id.value" : "136" 
                }
            } 
        } 
    },
    "size" : 10
}'