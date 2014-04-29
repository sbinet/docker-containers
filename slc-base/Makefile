.PHONY: all build

all: build
	@echo "done"

build: Dockerfile
	dockerid=`$(docker build --no-cache -t binet/build-slc-base .)`
	docker cp $(dockerid):/build/docker.tar build/docker.tar

upload: build
	docker import build/docker.tar - binet/slc-base:6.5

