FROM docker:latest

RUN apk add --update --no-cache make

RUN apk add --update --no-cache python3 py3-pip python3-dev && pip install docker-compose

RUN apk add --update --no-cache python3 py3-pip python3-dev && pip install docker-compose

# install git-crypt on alpine
# https://pkgs.alpinelinux.org/package/edge/community/x86/git-crypt
RUN apk add --no-cache ca-certificates git-crypt

# install fabric
# https://www.fabfile.org/installing.html
RUN apk add --no-cache openssh-client py3-pip py3-crypto bash rsync && \
    pip3 install fabric && \
    rm -rf /var/cache/apk/* /var/tmp/*
