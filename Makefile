NAME=openvpn
REPO=edgard/$(NAME)

.PHONY: build start test test-stop run push

all: build

build:
	docker build -t $(REPO) .

start:
	docker run -d --name $(NAME) --privileged -p 1194:1194/udp -v /srv/$(NAME):/data $(REPO)

test:
	docker run -d --name $(NAME)-test --privileged -p 1194:1194/udp -v /tmp/$(NAME)-test/data:/data $(REPO)

test-stop:
	docker stop $(NAME)-test
	docker rm $(NAME)-test

run:
	docker run -t -i --privileged -p 1194:1194/udp -v /tmp/$(NAME)-run/data:/data --rm $(REPO) /bin/bash

push:
	docker push $(REPO)
