#!/bin/bash

# 1. Data API App Id
appid="data-kzdgt"

# 2. API Key
apikey="d2TDY9Chqj8K9gQwjYMLHT9htdMEgVWy42goix687N3Ln76xVLQmK9PV76LlsutJ"

# 3. Base URL
baseurl="https://data.mongodb-api.com/app/$appid/endpoint/data/v1"

# 4. Endpoint
endpoint="/action/findOne"

# 5. dataSource
dataSource="Cluster0"

# 6. database
database="social_butterfly"

# 7. collection
collection="flutters"

# 8. filter
# filter='{}'
filter='{
  "body": {
    "$regex": "dad-a-base", 
    "$options": "i"
  } 
}'

# 9. Run the curl request from the terminal: ./findOne.sh
curl -XPOST -H "api-key: $apikey" -H 'Access-Control-Request-Headers: *' -H 'Content-type: application/json' -d '{ 
  "dataSource": "'"$dataSource"'", 
  "database": "'"$database"'", 
  "collection": "'"$collection"'",
  "filter": '"$filter"'
}' $baseurl$endpoint | npx json