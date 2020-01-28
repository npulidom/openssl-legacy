# OS
FROM alpine:3.7
LABEL maintainer="nicolas.pulido@crazycake.tech"

RUN apk update && apk add \
	bash \
	openssl

WORKDIR /home
