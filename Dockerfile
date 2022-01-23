FROM alpine:3.15

RUN apk add --no-cache jq httpie

RUN apk add yq --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community

ENTRYPOINT [ "http" ]
CMD [ "--help" ]
