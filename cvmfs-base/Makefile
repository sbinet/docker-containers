## binet/cvmfs-base

.PHONY: all build

REPO := binet/cvmfs-base
TAG := $(TAG:`date +%Y%m%d`)

all: build
	@echo "done"

build: Dockerfile
	docker build --rm --tag=$(REPO):$(TAG) .
	docker tag --force $(REPO):$(TAG) $(REPO):latest

upload: build
	docker push $(REPO):$(TAG)
	docker push $(REPO):latest



