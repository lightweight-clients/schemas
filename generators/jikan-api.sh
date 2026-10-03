set -euo pipefail

output_dir=$1

curl -fsSL \
    --retry 3 \
    --retry-delay 2 \
    --retry-max-time 30 \
    --connect-timeout 10 \
    --max-time 120 \
    --output "$output_dir/openapi.json" \
    "https://raw.githubusercontent.com/jikan-me/jikan-rest/master/storage/api-docs/api-docs.json"
