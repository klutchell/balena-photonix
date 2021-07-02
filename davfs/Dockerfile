FROM debian:bullseye-slim

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install --no-install-recommends -y davfs2 rsync && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

COPY run.sh /

RUN chmod +x /run.sh

CMD [ "/run.sh" ]
