FROM alpine

RUN apk update && apk add --no-cache openssl && rm -rf /var/cache/apk/*

COPY update_openssl /etc/periodic/15min/update_openssl

RUN chmod a+x /etc/periodic/15min/update_openssl

CMD ["crond", "-l info", "-f"]
