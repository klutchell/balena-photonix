FROM photonixapp/photonix:0.24.0

# hadolint ignore=DL3008
RUN apt-get update && \
    apt-get install --no-install-recommends -y curl && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

COPY balena-init.sh /

RUN chmod +x /balena-init.sh

CMD [ "/balena-init.sh" ]

ENV DEVICE_HOSTNAME photonix
