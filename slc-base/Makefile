.PHONY: all build

all: build
	@echo "done"

build: Dockerfile
	docker build --no-cache --rm -t binet/build-slc-base .
	@echo "... images ..."
	docker images -q binet/build-slc-base
	dockerid=`docker images -q binet/build-slc-base`
	docker cp $(dockerid):/build/docker.tar build/docker.tar

upload: build
	docker import build/docker.tar - binet/slc-base:6.5

