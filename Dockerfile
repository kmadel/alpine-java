FROM alpine:3.3

ENV DOCKER_BUCKET get.docker.com
ENV DOCKER_VERSION 1.9.1
ENV DOCKER_SHA256 52286a92999f003e1129422e78be3e1049f963be1888afc3c9a99d5a9af04666

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
 && apk --no-cache add openjdk8-jre-base curl \
 && curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-$DOCKER_VERSION" -o /usr/bin/docker \
 && echo "${DOCKER_SHA256}  /usr/bin/docker" | sha256sum -c - \
 && chmod +x /usr/bin/docker \
 && apk del curl
 
CMD ["java","-version"]