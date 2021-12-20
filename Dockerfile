FROM alpine:latest

RUN set -ex \
  && apk add --no-cache --virtual .build-deps wget \
  && apk add --no-cache ca-certificates \
  && cd /tmp \
  && wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip \
  && unzip ngrok-stable-linux-amd64.zip \
  && install -v -D ngrok /bin/ngrok \
  && rm -f ngrok-stable-linux-amd64.zip ngrok \
  && apk del .build-deps

COPY ngrok.yml /ngrok.yml
COPY run.sh /bin/run.sh

EXPOSE 4040

CMD ["/bin/run.sh"]