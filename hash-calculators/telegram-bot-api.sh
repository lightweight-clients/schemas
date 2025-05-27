set -e

http_content=$(curl -s https://core.telegram.org/bots/api)
normalized_content=$(echo "$http_content" | sed '/<!-- page generated in .*ms -->/d')
crc32_hash=$(echo "$normalized_content" | cksum | awk '{print $1}')

echo $crc32_hash
