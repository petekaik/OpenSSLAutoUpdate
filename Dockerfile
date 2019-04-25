FROM alpine

MAINTAINER Petteri Kaikkonen (https://github.com/petekaik)

RUN apk update && apk add --no-cache openssl && apk cache clean

ENTRYPOINT ["openssl"]