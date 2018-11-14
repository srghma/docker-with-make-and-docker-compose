# XXX
# to login use
# docker login

DOCKER_ID_USER ?= srghma
DOCKER_IMAGE_NAME ?= docker-with-make-and-docker-compose

docker_build_and_upload:
	docker build --tag "${DOCKER_ID_USER}/${DOCKER_IMAGE_NAME}" .
	docker push "${DOCKER_ID_USER}/${DOCKER_IMAGE_NAME}"
