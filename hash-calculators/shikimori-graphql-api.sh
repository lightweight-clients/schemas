set -e

query=<<EOF
{"query":"query IntrospectionQuery{__schema{queryType{name} mutationType{name} subscriptionType{name} types
{...FullType} directives{name description locations args{...InputValue}}}} fragment FullType on __Type{kind
name description fields(includeDeprecated: true){name description args{...InputValue} type{...TypeRef}
isDeprecated deprecationReason} inputFields{...InputValue} interfaces{...TypeRef}
enumValues(includeDeprecated: true){name description isDeprecated deprecationReason} possibleTypes
{...TypeRef}} fragment InputValue on __InputValue{name description type{...TypeRef} defaultValue} fragment
TypeRef on __Type{kind name ofType{kind name ofType{kind name ofType{kind name ofType{kind name ofType{kind
name ofType{kind name ofType{kind name}}}}}}}}"}
EOF

http_content=$(curl -s -X POST -H "Content-Type: application/json" -d "$query" https://shikimori.one/api/graphql)
crc32_hash=$(echo "$http_content" | cksum | awk '{print $1}')

echo $crc32_hash
