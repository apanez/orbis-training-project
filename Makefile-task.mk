
.PHONY: build

build:
	docker build -t batan1990/orbis-training-project:2.0.0 .

push: login
	docker push batan1990/orbis-training-project:2.0.0

up:
	docker-compose up -d

login:
	docker login