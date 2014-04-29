.PHONY: all build

all: build
	@echo "done"

build: Dockerfile
	docker build --no-cache -t binet/build-slc-base .
	dockerid=`docker ps -q -a | head -n 1`
	docker cp $(dockerid):/build/docker.tar build/docker.tar

upload: build
	docker import build/docker.tar - binet/slc-base:6.5

