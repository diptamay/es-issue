#!/bin/bash
curl -XPUT -d @${1} http://localhost:9200/${4}/${2}/${3}