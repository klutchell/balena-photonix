FROM debian:bullseye-slim

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install --no-install-recommends -y davfs2 rsync && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

COPY init.sh /

RUN chmod +x /init.sh

CMD [ "/init.sh" ]
