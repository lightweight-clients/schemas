set -euo pipefail

curl -fsSL \
    --retry 3 \
    --retry-delay 2 \
    --retry-max-time 30 \
    --connect-timeout 10 \
    --max-time 120 \
    "https://dac-static.atlassian.com/cloud/bitbucket/swagger.v3.json" \
    | sha256sum \
    | awk '{print $1}'
