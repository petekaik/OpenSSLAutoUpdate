FROM alpine

RUN apk update && apk add --no-cache openssl && rm -rf /var/cache/apk/*

WORKDIR /etc/periodic/15min
COPY https://github.com/petekaik/OpenSSLAutoUpdate/blob/master/update_openssl ./ && chmod a+x *

ENTRYPOINT ["openssl"]