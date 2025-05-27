#!/bin/bash
set -e

output_dir=$(realpath "$1")

docker run \
    --rm \
    --user "$(id -u):$(id -g)" \
    --volume "$output_dir":/output \
    ghcr.io/sysbot-org/tgscraper:latest \
    app:export-schema --openapi /output/openapi.json
