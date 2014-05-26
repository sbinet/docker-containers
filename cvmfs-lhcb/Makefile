## binet/cvmfs-lhcb

.PHONY: all build

REPO := binet/cvmfs-lhcb
TAG := 20140526

all: build
	@echo "done"

build: Dockerfile
	docker build --rm --tag=$(REPO):$(TAG) .
	docker tag --force $(REPO):$(TAG) $(REPO):latest

upload: build
	docker push $(REPO):$(TAG)
	docker push $(REPO):latest



