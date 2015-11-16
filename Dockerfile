FROM alpine:3.2
MAINTAINER Ricky Chiang <metavige@gmail.com>

RUN apk --update add nodejs && \
    npm install -g npm && \
    npm install -g api-designer && \
    rm -rf /var/cache/apk/*

EXPOSE 3000

CMD api-designer
