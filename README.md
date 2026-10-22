# CloudCart - End-to-End DevOps Project

## Docker Compose

The configuration is available at `docker/compose.yaml`. It defines the
CloudCart application image and builds it using `app/Dockerfile`.

### Prerequisites

- Docker Engine
- Docker Compose plugin

### Run with Docker Compose

From the repository root:

    docker compose -f docker/compose.yaml up --build

Note: Docker Compose has not been installed or tested on the current EC2
instance. The configuration has passed a basic YAML structure check.

The current Java application prints a welcome message and exits; it is not
an HTTP server, so no web port is exposed.

### Run with Docker only

    docker build -t cloudcart:1.0 ./app
    docker run --rm cloudcart:1.0

The Docker image runs as a non-root user.
