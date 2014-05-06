## binet/lhcb

.PHONY: all build

REPO := binet/lhcb
TAG := v37r1

all: build
	@echo "done"

build: Dockerfile
	docker build --rm --tag=$(REPO) .
	docker tag $(shell docker images -q $(REPO)) $(REPO):$(TAG)

upload: build
	docker push $(REPO):$(TAG)


