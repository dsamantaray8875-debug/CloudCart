# CloudCart Kubernetes Job

## Configuration

The `job.yaml` file defines a Kubernetes Job for the CloudCart application.

- Image: `cloudcart:1.0`
- Restart policy: `Never`
- Failed Job retry limit: 2
- Active deadline: 120 seconds
- CPU request: 100m
- Memory request: 64Mi
- CPU limit: 500m
- Memory limit: 128Mi

## Security

- Runs as non-root user ID 10001.
- Disables privilege escalation.
- Drops all Linux capabilities.

## Important Notes

The Docker image currently exists on the EC2 host. A Kubernetes cluster
needs access to the image through an image registry or another supported
image-distribution method.

This configuration has been checked using Python YAML validation.
It has not been deployed to a Kubernetes cluster.
