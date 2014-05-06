## binet/gaudi

.PHONY: all build

REPO := binet/gaudi
TAG := v24r2

all: build
	@echo "done"

build: Dockerfile
	docker build --rm --tag=$(REPO) .
	docker tag $(shell docker images -q $(REPO)):$(TAG)

upload: build
	docker push $(REPO):$(TAG)



