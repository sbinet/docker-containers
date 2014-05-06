## binet/cvmfs

.PHONY: all build

REPO := binet/cvmfs
TAG := 20140506

all: build
	@echo "done"

build: Dockerfile
	docker build --rm --tag=$(REPO) .
	docker run -i -t $(shell docker images -q $(REPO) | uniq) /bin/ls
	docker tag --force $(shell docker images -q $(REPO)) $(REPO):$(TAG)

upload: build
	docker push $(REPO):$(TAG)



