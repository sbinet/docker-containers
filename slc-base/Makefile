.PHONY: all build

VERSION=6.5

all: build
	@echo "done"

build: Dockerfile
	docker build -t binet/build-slc-base .
	docker run -i -t $(shell docker images -q binet/build-slc-base) /bin/true
	$(shell	docker cp $(shell docker ps -a | grep binet/build-slc-base | head -n1 | cut -d ' ' -f1):/build/docker.tar build)
	cat build/docker.tar | docker import - binet/slc-base:$(VERSION)

upload: build
	docker push binet/slc-base:$(VERSION)

