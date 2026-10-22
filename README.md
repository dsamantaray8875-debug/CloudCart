# CloudCart — DevOps Portfolio Project

CloudCart is a Java-based sample application used to practise software
builds, containerization, CI validation, infrastructure configuration,
and deployment-manifest preparation.

## Technology Stack

- Java 17 and Maven
- JUnit 5
- Docker
- Git and GitHub
- GitHub Actions
- Terraform and AWS provider
- Docker Compose configuration
- Kubernetes Job and Kustomize manifests
- Jenkins pipeline definition
- Ansible configuration and playbook

## Project Structure

- `app/` — Java source, tests, Maven configuration, and Dockerfile
- `.github/workflows/` — GitHub Actions workflow
- `docker/` — Docker Compose configuration
- `terraform/` — Terraform provider and configuration files
- `k8s/` — Kubernetes Job and Kustomize manifests
- `jenkins/` — Jenkins pipeline definition
- `ansible/` — Ansible playbook and inventory templates

## Run the Application with Docker

Build the Java application:

    cd app
    mvn clean verify
    cd ..

Build and run the Docker image:

    docker build -t cloudcart:1.0 ./app
    docker run --rm cloudcart:1.0

The current Java application prints a welcome message and exits.
It is a command-line application, not an HTTP server.

## Docker Compose

The configuration is located at `docker/compose.yaml`.

    docker compose -f docker/compose.yaml up --build

Docker Compose has not been executed on the development EC2 instance
because the Compose plugin is unavailable there.

## Terraform

Terraform configuration and provider validation have been performed.

    terraform -chdir=terraform fmt -check
    terraform -chdir=terraform validate

The configuration currently defines no AWS infrastructure resources.
No Terraform apply or new AWS infrastructure deployment is claimed.

## Kubernetes

The `k8s/` directory contains a Kubernetes Job and Kustomize configuration.
The manifest includes resource limits and non-root security settings.

The manifests have undergone basic local validation but have not been
deployed to a Kubernetes cluster. The image must be made accessible to
the target cluster before deployment.

## CI/CD and Automation

The repository contains a GitHub Actions workflow, a Jenkinsfile, and
Ansible starter configuration. Check the GitHub Actions page for the
latest workflow result. Jenkins and Ansible execution have not been
verified on the current EC2 instance.

## Project Status

This repository is a DevOps practice and portfolio project. Configurations
and completed tests are documented separately from components that have
not been executed or deployed.

## Cost and Security

No new AWS resources are required for the local validation steps.
Never commit AWS credentials, private keys, passwords, or `.env` secrets.
