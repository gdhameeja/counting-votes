# COUNTING VOTES 

Based on Go Programming blueprints 

## Access to public data such as hashtags 

- Requires a bearer token, check below 

curl "https://api.twitter.com/2/tweets?ids=1261326399320715264,1278347468690915330" \ 

  -H "Authorization: Bearer AAAAAAAAAAAAAAAAAAAAAFnz2wAAAAAAxTmQbp%2BIHDtAhTBbyNJon%2BA72K4%3DeIaigY0QBrv6Rp8KZQQLOTpo9ubw5Jt?WRE8avbi" 


## Generate bearer token 

curl -u "$API_KEY:$API_SECRET_KEY" \ 

  --data 'grant_type=client_credentials' \ 

  'https://api.twitter.com/oauth2/token' 
 

## Tutorial on streaming api 

https://developer.twitter.com/en/docs/tutorials/stream-tweets-in-real-time 

- Api to add rule for streaming 

```
curl -X POST 'https://api.twitter.com/2/tweets/search/stream/rules' \ 

-H "Content-type: application/json" \ 

-H "Authorization: Bearer $BEARER_TOKEN" -d \ 

'{ 

  "add": [ 

    {"value": "from:twitterdev from:twitterapi has:links"} 

  ] 

}' 
```
  
- Streaming url to use (this is where actual streaming begins based on the rule created in the last step) 

`$ curl -X GET -H "Authorization: Bearer $BEARER_TOKEN" "https://api.twitter.com/2/tweets/search/stream"`

- Documentation on CRUD on rules here(CREATE, DELETE, GET rules): 

https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/post-tweets-search-stream-rules#Delete 
