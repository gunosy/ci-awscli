#!/bin/ash
set -e

if [[ -n "${ASSUME_ROLE_ARN}" ]]; then
    CREDENTIALS=$(aws sts assume-role --role-arn ${ASSUME_ROLE_ARN} --role-session-name ${ASSUME_ROLE_SESSION_NAME:-ci-awscli})
    export AWS_SECRET_ACCESS_KEY=$(echo ${CREDENTIALS} | jq -r '.Credentials.SecretAccessKey') && \
    export AWS_SESSION_TOKEN=$(echo ${CREDENTIALS} | jq -r '.Credentials.SessionToken') && \
    export AWS_ACCESS_KEY_ID=$(echo ${CREDENTIALS} | jq -r '.Credentials.AccessKeyId')
fi

exec "$@"
