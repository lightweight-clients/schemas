set -e

diagnostics_dir="diagnostics/telegram-bot-api"
raw_content="$diagnostics_dir/raw.html"
normalized_content="$diagnostics_dir/normalized.html"

mkdir -p "$diagnostics_dir"
curl -s https://core.telegram.org/bots/api --output "$raw_content"
normalized=$(sed '/<!-- page generated in .*ms -->/d' "$raw_content")
printf '%s\n' "$normalized" > "$normalized_content"
crc32_hash=$(cksum < "$normalized_content" | awk '{print $1}')

echo "$crc32_hash"
