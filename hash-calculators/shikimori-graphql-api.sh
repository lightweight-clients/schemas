set -euo pipefail

query=$(cat <<'EOF'
{"query":"query IntrospectionQuery{__schema{queryType{name} mutationType{name} subscriptionType{name} types {...FullType} directives{name description locations args{...InputValue}}}} fragment FullType on __Type{kind name description fields(includeDeprecated: true){name description args{...InputValue} type{...TypeRef} isDeprecated deprecationReason} inputFields{...InputValue} interfaces{...TypeRef} enumValues(includeDeprecated: true){name description isDeprecated deprecationReason} possibleTypes {...TypeRef}} fragment InputValue on __InputValue{name description type{...TypeRef} defaultValue} fragment TypeRef on __Type{kind name ofType{kind name ofType{kind name ofType{kind name ofType{kind name ofType{kind name ofType{kind name ofType{kind name}}}}}}}}"}
EOF
)

http_content=$(curl -fsSL \
    --retry 3 \
    --retry-delay 2 \
    --retry-max-time 30 \
    --connect-timeout 10 \
    --max-time 120 \
    --request POST \
    --header "Content-Type: application/json" \
    --data "$query" \
    "https://shikimori.io/api/graphql")
crc32_hash=$(echo "$http_content" | cksum | awk '{print $1}')

echo "$crc32_hash"
