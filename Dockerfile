FROM alpine:3.9

RUN apk add --no-cache jq httpie yq

ENTRYPOINT [ "http" ]
CMD [ "--help" ]
