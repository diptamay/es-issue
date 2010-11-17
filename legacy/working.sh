curl -XGET 'http://localhost:9200/es-test/video/_search?pretty=true' -d '
{
    "query": {
        "filtered": {
            "query" : {
                "bool" : {
                    "should" : [
                        {
                            "field" : {
                                "fields.kicker" : "Top" 
                            } 
                        }
                    ],
                    "must" : [
                        {
                            "field" : {
                                "appAccountIds" : 14 
                            } 
                        },
                        {
                            "field" : {
                                "appAccountIds" : 179
                            } 
                        },
                        {
                            "bool" : {
                                "should" : [
                                    {
                                        "field" : {
                                            "tags.subject.value" : "MLBMOBILE_FEATURES" 
                                        } 
                                    },
                                    {
                                        "field" : {
                                            "tags.subject.value" : "MLBCOM_TOP_PLAY" 
                                        } 
                                    } 
                                ],
                                "minimum_number_should_match" : 1 
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

curl -XGET 'http://localhost:9200/es-test/video/_search?pretty=true' -d '
{
    "query": {
        "filtered": {
            "query" : {
                "bool" : {
                    "should" : {
						"field" : {
							"_all" : "A-Rod" 
						} 
                     },
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


curl -XGET 'http://localhost:9200/es-test/video/_search?pretty=true' -d '
{
    "query": {
        "filtered": {
            "query" : {
                "bool" : {
                    "must" : {
						"field" : {
							"state" : "A" 
						} 
                    },
                    "should" : {
						"field" : {
							"_all" : "A-Rod" 
						} 
                     },
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

curl -XGET 'http://localhost:9200/es-test/video/_search?pretty=true' -d '
{
    "query": {
        "filtered": {
            "query" : {
				"bool" : {
					"must" : [
						{
							"field" : {
								"tags.subject.value" : "MLBMOBILE_FEATURES" 
							} 
						},
						{
							"field" : {
								"tags.game_pk.value" : "265550" 
							} 
						} 
					]
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

curl -XGET 'http://localhost:9200/es-test/view/_search?pretty=true' -d '
{
    "query" : {
        "bool" : {
            "must" : [
                {
                    "field" : {
                        "state" : "A" 
                    }
                },
                {
                    "field" : {
                        "appAccountIds" : 14 
                    } 
                }
            ]
        } 
    },
    "from" : 0,
    "size" : 10 
}'

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

curl -XGET 'http://localhost:9200/es-test/video/_search?pretty=true' -d '
{
    "query" : {
        "bool" : {
            "must" : {
                "field" : {
                    "state" : "D" 
                }
            } 
        } 
    },
    "size" : 10
}'