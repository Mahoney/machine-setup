#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

username=${1:-$USER}
echo "Fetching a new API Token for user $username"
API_TOKEN=$(curl -u "$username" --silent --show-error --fail "https://artylab.expedia.biz/api/security/encryptedPassword")
echo "New API Token is: $API_TOKEN."
EXPRESSION="s/<password>.*<\/password>/<password>$API_TOKEN<\/password>/g"
sed -i -- "$EXPRESSION" ~/.m2/settings.xml
echo "maven settings are now updated!"
echo "$API_TOKEN" | docker login kumorelease-docker-virtual.artylab.expedia.biz --username "$username" --password-stdin
echo "logged in to docker!"
echo "Bye!"
