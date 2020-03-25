IMAGE_PREFIX = twosixlabsdart
IMAGE_NAME = auto-topic-provisioner
TAG = latest
IMG = $(IMAGE_PREFIX)/$(IMAGE_NAME):$(TAG)

docker-build:
	docker build --pull -t $(IMG) .

docker-push: docker-build
	docker push $(IMG)