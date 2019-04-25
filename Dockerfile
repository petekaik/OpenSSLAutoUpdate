FROM alpine

RUN apk update && apk add --no-cache openssl && apk cache clean

WORKDIR /etc/periodic/15min
COPY https://github.com/petekaik/OpenSSLAutoUpdate/blob/master/update_openssl ./ && chmod a+x *

ENTRYPOINT ["openssl"]