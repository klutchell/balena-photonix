FROM alpine:3.14.0

ENV DEBIAN_FRONTEND noninteractive

RUN apk add --no-cache davfs2 rsync

COPY run.sh /

RUN chmod +x /run.sh

CMD [ "/run.sh" ]
