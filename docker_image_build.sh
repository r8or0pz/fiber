#!/bin/bash

# Get the version dynamically (e.g., from Git or manually set)
VERSION=$(git rev-parse --short HEAD)  # Get the short Git commit hash
# VERSION=$(date +%Y%m%d-%H%M%S)       # Optionally use a timestamp
# VERSION=1.0.0                        # Or set a static version manually

# Define the image name
IMAGE_NAME="r8or0pz/fiber-hello"

# Build and tag the Docker image
docker build -t ${IMAGE_NAME}:${VERSION} .

# Optionally, tag the image with "latest" as well
docker tag ${IMAGE_NAME}:${VERSION} ${IMAGE_NAME}:latest

# Push the image to a registry
docker push ${IMAGE_NAME}:${VERSION}
docker push ${IMAGE_NAME}:latest
