FROM alpine:3.15

RUN apk add --no-cache jq httpie

ENV PACKAGES="\
  py-pip \
  jq \
"

RUN apk add --update $PACKAGES \
  && pip install yq \
  && rm /var/cache/apk/*

ENTRYPOINT [ "http" ]
CMD [ "--help" ]
