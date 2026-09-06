set -e

curl -fsSL https://dac-static.atlassian.com/cloud/bitbucket/swagger.v3.json | sha256sum | awk '{print $1}'
