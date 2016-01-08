FROM alpine:3.3

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
 && apk --no-cache add openjdk8-jre-base
 && wget -O /usr/bin/docker --no-check-certificate https://get.docker.com/builds/Linux/x86_64/docker-1.9.0 \
 && chmod a+x /usr/bin/docker
 
 CMD ["java","-version"]