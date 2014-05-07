## binet/gaudi

.PHONY: all build

REPO := binet/gaudi
TAG := v24r2

all: build
	@echo "done"

build: Dockerfile
	docker build --rm --tag=$(REPO):$(TAG) .
	docker tag --force $(REPO):$(TAG) $(REPO):latest

upload: build
	docker push $(REPO):$(TAG)



