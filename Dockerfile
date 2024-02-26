FROM alpine:latest

LABEL org.opencontainers.image.title=useful-tools \
      org.opencontainers.image.description="Bash, Certbot, Curl, Jq, OpenSSH client" \
      org.opencontainers.image.vendor=starina

RUN set -ex; \
    apk add --update --no-cache bash certbot curl jq openssh-client; \
    mkdir -p ~/.ssh; chmod 700 ~/.ssh
