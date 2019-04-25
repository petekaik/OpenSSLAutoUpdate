FROM alpine

RUN apk update && apk add --no-cache openssl && rm -rf /var/cache/apk/*

ADD https://github.com/petekaik/OpenSSLAutoUpdate/blob/master/update_openssl /etc/periodic/15min/update_openssl

RUN chmod a+x /etc/periodic/15min/update_openssl

ENTRYPOINT ["/bin/ash"]