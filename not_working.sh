curl -XGET 'http://localhost:9200/es-test/video/_search?pretty=true' -d '
{
    "query" : {
        "bool" : {
            "must" : {
                "field" : {
                    "appAccountIds" : 179 
                }
            } 
        } 
    },
    "size" : 10
}'

#curl -XGET 'http://localhost:9200/es-test/_search?pretty=true' -d '
#{
#    "query" : {
#        "bool" : {
#            "should" : {
#                "term" : {
#                    "_id" : 10990239 
#                } 
#            },
#            "minimum_number_should_match" : 1 
#        } 
#    },
#    "size" : 5 
#}'