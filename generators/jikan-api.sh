set -e

output_dir=$1

curl -s \
    -o $output_dir/openapi.json \
    https://raw.githubusercontent.com/jikan-me/jikan-rest/master/storage/api-docs/api-docs.json
