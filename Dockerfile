FROM docker:latest

RUN apk add --update --no-cache make

RUN apk add --update --no-cache python py-pip python-dev && pip install docker-compose;

# install git-crypt on alpine
RUN apk add --no-cache ca-certificates && \
  wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/sgerrand/alpine-pkg-git-crypt/master/sgerrand.rsa.pub && \
  wget https://github.com/sgerrand/alpine-pkg-git-crypt/releases/download/0.6.0-r0/git-crypt-0.6.0-r0.apk && \
  apk add git-crypt-0.6.0-r0.apk && \
  rm -rf git-crypt-0.6.0-r0.apk /etc/apk/keys/sgerrand.rsa.pub /var/cache/apk/* /var/tmp/*
