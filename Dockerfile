FROM alpine:latest

RUN mkdir -p /aws && \
    apk -Uuv add groff jq less python py-pip && \
    pip install awscli && \
    pip install boto3 && \
    apk --purge -v del py-pip && \
    rm /var/cache/apk/*

WORKDIR /aws

