# CloudCart Kubernetes Configuration

This directory contains a Kubernetes Job for the current Java CLI application.

## Files
- job.yaml: Runs the CloudCart application as a Job.
- kustomization.yaml: Groups Kubernetes resources using Kustomize.

## Important
The image cloudcart:1.0 must be available to the Kubernetes cluster.
The image currently exists on the EC2 Docker host only. A separate cluster
cannot automatically access that local image.

These files are configuration only. No Kubernetes resources are deployed
by creating or committing these files.
