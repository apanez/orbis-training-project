include ./Makefile-task.mk

NAME_IMAGE=batan1990/orbis-training-project
DOCKER_TAG=2.0.0
DOCKER_IMAGE=${NAME_IMAGE}:${DOCKER_TAG}
NAME="JANET"
LASTNAME="QUISPE"
PWDN=${PWD}

install:
	npm install
	@echo ${NAME_IMAGE}

start:
	npm start
	@echo ${DOCKER_TAG}

release:
	npm run release
	@echo ${DOCKER_IMAGE}

greet:
	@docker run --entrypoint=app/resources/example.sh -e NAME=${NAME}${LASTNAME} -it -v "$(PWD)":/app batan1990/orbis-training-project:2.0.0

orbis-training-project:
	@echo 'Hola recursos!'