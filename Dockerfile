FROM alpine:3.15

RUN apk add --no-cache jq httpie

wget $(curl -s https://api.github.com/repos/mikefarah/yq/releases/latest | grep browser_download_url | grep linux_amd64 | cut -d '"' -f 4) -O /usr/bin/yq
chmod +x /usr/bin/yq

ENTRYPOINT [ "http" ]
CMD [ "--help" ]
