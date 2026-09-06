set -e

curl -fsSL -o "$1/openapi.json" https://dac-static.atlassian.com/cloud/bitbucket/swagger.v3.json
