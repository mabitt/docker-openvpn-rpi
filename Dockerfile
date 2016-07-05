FROM hypriot/rpi-alpine-scratch

ENV REFRESHED_AT 2016-07-5-00-11Z

ENV LANG C.UTF-8

RUN apk update && \
apk upgrade && \
apk add bash supervisor ca-certificates curl openvpn openssl iptables && \
rm -rf /var/cache/apk/*

COPY files/root /

CMD ["/start"]
