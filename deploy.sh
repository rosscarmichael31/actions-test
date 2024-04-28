#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <container_version>"
    exit 1
fi

# Define variables
CONTAINER_NAME="nginx-redirect"
CONTAINER_VERSION="$1"

# Stop Container
docker ps -f name="${CONTAINER_NAME}" -q | xargs --no-run-if-empty docker stop

# Remove Previous Container
docker container ls -a -f name="${CONTAINER_NAME}" -q | xargs --no-run-if-empty docker rm

# Pull Image
docker pull ghcr.io/rosscarmichael31/actions-test."${CONTAINER_NAME}":"${CONTAINER_VERSION}"

# Create Container
docker create --restart always --name "${CONTAINER_NAME}" -p 8080:8080 ghcr.io/rosscarmichael31/actions-test/"${CONTAINER_NAME}":"${CONTAINER_VERSION}"

# Start Container
docker start "${CONTAINER_NAME}"

# Health Check
docker inspect -f '{{.State.Running}}' "${CONTAINER_NAME}" | fgrep true
