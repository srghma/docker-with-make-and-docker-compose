FROM docker:latest

RUN apk add --update --no-cache make

RUN apk add --update --no-cache python py-pip python-dev && pip install docker-compose;
