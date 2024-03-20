FROM alpine:latest

RUN set -ex; \
    apk add --update --no-cache tzdata bash certbot curl jq openssh-client bind-tools openssl coreutils; \
    mkdir -p ~/.ssh; chmod 700 ~/.ssh

LABEL org.opencontainers.image.title=useful-tools \
      org.opencontainers.image.description="Bash, Certbot, Curl, Jq, OpenSSH client" \
      org.opencontainers.image.vendor=starina
