set -e

curl -fsSL https://dac-static.atlassian.com/server/bitbucket/9.4.swagger.v3.json | sha256sum | awk '{print $1}'
