## binet/gaudi

.PHONY: all build

REPO := binet/gaudi
TAG := v24r2

all: build
	@echo "done"

build: Dockerfile
	docker build --rm --tag=$(REPO) .
	docker run -i -t $(shell docker images -q $(REPO)) /bin/ls
	docker tag --force $(shell docker images -q $(REPO)) $(REPO):$(TAG)

upload: build
	docker push $(REPO):$(TAG)



