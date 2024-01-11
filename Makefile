# XXX
# to login use
# docker login

DOCKER_ID_USER ?= srghma
DOCKER_IMAGE_NAME ?= docker-with-make-and-docker-compose
VERSION ?= v0.3

# docker run -it srghma/docker-with-make-and-docker-compose:latest cat /etc/os-release

docker_build_and_upload:
	docker build --tag "${DOCKER_ID_USER}/${DOCKER_IMAGE_NAME}:latest" --tag "${DOCKER_ID_USER}/${DOCKER_IMAGE_NAME}:${VERSION}" .
	docker push "${DOCKER_ID_USER}/${DOCKER_IMAGE_NAME}:${VERSION}"
	docker push "${DOCKER_ID_USER}/${DOCKER_IMAGE_NAME}:latest"
