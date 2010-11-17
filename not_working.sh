curl -XGET 'http://localhost:9200/es-test/_search?pretty=true' -d '
{
    "from": 0,
    "size": 100,
    "query": {
        "bool": {
            "must": {
                "field": {
                    "state": "A"
                }
            },
            "must": {
                "bool": {
                    "should": {
                        "field": {
                            "tags.subject.value": "LIVE_EVENT_COVERAGE"
                        }
                    },
                    "minimum_number_should_match": 1
                }
            },
            "must": {
                "bool": {
                    "should": {
                        "field": {
                            "tags.calendar_event_id.value": "14-263896-2010-04-11"
                        }
                    },
                    "minimum_number_should_match": 1
                }
            }
        }
    },
    "sort": [
        {
            "userDate": {
                "reverse": true
            }
        }
    ]
}'