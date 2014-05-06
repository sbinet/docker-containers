.PHONY: all build

all: build
	@echo "done"

build: Dockerfile
	docker build --rm --tag=binet/lhcb:v37r1 .

upload: build
	docker push binet/lhcb:v37r1


