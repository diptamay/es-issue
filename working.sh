curl -XGET 'http://localhost:9200/es-test/video/_search?pretty=true' -d '
{
    "query": {
        "filtered": {
            "query" : {
                "bool" : {
                    "should" : [
                        {
                            "field" : {
                                "fields.kicker" : "A-Rod" 
                            } 
                        }
                    ],
                    "minimum_number_should_match" : 1 
                } 
            },
            "filter": {
                "range": {
                    "userDate": {
                        "from": "2010-08-15T00:00:00-0400",
                        "to": "2010-08-16T00:00:00-0400",
                        "include_lower": true,
                        "include_upper": true 
                    } 
                } 
            } 
        } 
    },
    "from" : 0,
    "size" : 10 
}'

