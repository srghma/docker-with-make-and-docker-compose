FROM docker:latest

RUN apk add --update --no-cache make

RUN apk add --update --no-cache python3 py3-pip python3-dev

RUN apk --no-cache add curl

# https://github.com/docker/compose/releases/
ENV DOCKER_COMPOSE_VERSION v2.26.1

RUN curl -L https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-Linux-x86_64 -o /usr/local/bin/docker-compose \
  && chmod +x /usr/local/bin/docker-compose

# RUN pip3 deactivate && pip3 install docker-compose

# install git-crypt on alpine
# https://pkgs.alpinelinux.org/package/edge/community/x86/git-crypt
RUN apk add --update --no-cache ca-certificates git-crypt

# install fabric (fab command)
# https://www.fabfile.org/installing.html
RUN apk add --no-cache openssh-client py3-pip py3-crypto bash rsync && \
    PIP_REQUIRE_VIRTUALENV=false pip3 install --break-system-packages fabric && \
    rm -rf /var/cache/apk/* /var/tmp/*
    # apk add py3-fabric && \
