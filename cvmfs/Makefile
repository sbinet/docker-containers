## binet/cvmfs

.PHONY: all build

REPO := binet/cvmfs
TAG := 20140506

all: build
	@echo "done"

build: Dockerfile
	docker build --rm --tag=$(REPO):$(TAG) .
	docker tag --force $(REPO):$(TAG) $(REPO):latest

upload: build
	docker push $(REPO):$(TAG)



