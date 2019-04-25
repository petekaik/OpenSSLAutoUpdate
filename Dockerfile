FROM alpine

RUN apk update && apk add --no-cache openssl && rm -rf /var/cache/apk/*

COPY update_openssl /etc/periodic/daily/update_openssl

RUN chmod a+x /etc/periodic/daily/update_openssl

CMD crond -f
