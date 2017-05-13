FROM alpine:latest

ENV CLI_VERSION=1.11.85

RUN mkdir -p /aws && \
    apk -Uuv add groff jq less python py-pip && \
    pip install awscli==$CLI_VERSION && \
    pip install boto3 && \
    apk --purge -v del py-pip && \
    rm /var/cache/apk/*

WORKDIR /aws

