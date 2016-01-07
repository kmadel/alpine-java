FROM alpine:3.3

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
 && apk --no-cache add openjdk8-jre-base
 
 CMD ["java","-version"]