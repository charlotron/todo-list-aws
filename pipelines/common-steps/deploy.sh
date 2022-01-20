#!/bin/bash

set -x
du -hs * | sort -h
echo $AWS_ACCESS_KEY_ID
echo $AWS_SECRET_ACCESS_KEY
echo $AWS_SESSION_TOKEN
echo $AWS_DEFAULT_REGION
sam deploy template.yaml --config-env ${ENVIRONMENT} --no-confirm-changeset --force-upload --no-fail-on-empty-changeset --no-progressbar
