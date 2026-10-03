set -euo pipefail

http_content=$(curl -fsSL \
    --retry 3 \
    --retry-delay 2 \
    --retry-max-time 30 \
    --connect-timeout 10 \
    --max-time 120 \
    "https://raw.githubusercontent.com/jikan-me/jikan-rest/master/storage/api-docs/api-docs.json")
crc32_hash=$(echo "$http_content" | cksum | awk '{print $1}')

echo "$crc32_hash"
