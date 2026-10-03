#!/usr/bin/env bash
set -euo pipefail

output_dir=$(realpath "$1")
tgscraper_tag="4.0.9"
tgscraper_commit="3eb29c5427d3c5bb3475039b7e00d16ba42ef393"
work_dir=$(mktemp -d)

cleanup() {
    rm -rf "$work_dir"
}
trap cleanup EXIT

git clone \
    --quiet \
    --depth 1 \
    --branch "$tgscraper_tag" \
    https://github.com/Sysbot-org/tgscraper.git \
    "$work_dir/tgscraper"

actual_commit=$(git -C "$work_dir/tgscraper" rev-parse HEAD)
if [[ "$actual_commit" != "$tgscraper_commit" ]]; then
    echo "Unexpected TGScraper commit for tag $tgscraper_tag: $actual_commit" >&2
    exit 1
fi

composer install \
    --working-dir "$work_dir/tgscraper" \
    --no-dev \
    --no-progress \
    --no-interaction \
    --prefer-dist \
    --optimize-autoloader

php "$work_dir/tgscraper/bin/tgscraper" \
    app:export-schema \
    --openapi "$output_dir/openapi.json"
