# Load .env file and set a default value if PYTHON_VERSION is not defined
-include .env
PYTHON_VERSION ?= 3.10

# Define the target to build the Docker image
build-python-db:
	docker build --build-arg PYTHON_VERSION=$(PYTHON_VERSION) -t mwallraf/python-db:$(PYTHON_VERSION) -f Dockerfile.python-db .

# Run the docker image and delete afterwards
run-python-db:
	docker run --rm -ti mwallraf/python-db:$(PYTHON_VERSION) bash

# Push the docker image to hub.docker.com
# Make sure to login first:  docker login
push-python-db:
	docker push mwallraf/python-db:$(PYTHON_VERSION)
