IMAGE_NAME=wgzhao/hbase

HBASE_VERSION ?= 2.2.6
IMAGE_TAG=$(HBASE_VERSION)

build:
	@echo "Building hbase docker image $(HBASE_VERSION)"
	docker build -t $(IMAGE_NAME) -t $(IMAGE_NAME):$(IMAGE_TAG) --build-arg version=$(HBASE_VERSION) .

# This won't work unless you have already set up the repository config
push:
	@echo "Pushing image to https://hub.docker.com/"
	docker push $(IMAGE_NAME)
