.PHONY: all build

all: build
	@echo "done"

build: Dockerfile
	docker build --no-cache -t binet/build-slc-base .
	docker cp binet/build-slc-base:/build .
