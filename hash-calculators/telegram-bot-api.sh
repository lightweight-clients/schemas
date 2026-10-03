set -euo pipefail

diagnostics_dir="diagnostics/telegram-bot-api"
raw_content="$diagnostics_dir/raw.html"
normalized_content="$diagnostics_dir/normalized.html"

mkdir -p "$diagnostics_dir"
curl -fsSL \
    --retry 3 \
    --retry-delay 2 \
    --retry-max-time 30 \
    --connect-timeout 10 \
    --max-time 120 \
    --output "$raw_content" \
    "https://core.telegram.org/bots/api"
normalized=$(sed '/<!-- page generated in .*ms -->/d' "$raw_content")
printf '%s\n' "$normalized" > "$normalized_content"
crc32_hash=$(cksum < "$normalized_content" | awk '{print $1}')

echo "$crc32_hash"
