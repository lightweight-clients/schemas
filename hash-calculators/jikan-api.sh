set -e

http_content=$(curl -s https://raw.githubusercontent.com/jikan-me/jikan-rest/master/storage/api-docs/api-docs.json)
crc32_hash=$(echo "$http_content" | cksum | awk '{print $1}')

echo $crc32_hash
