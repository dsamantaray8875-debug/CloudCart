variable "aws_region" {
  description = "AWS region for CloudCart infrastructure"
  type        = string
  default     = "us-east-2"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Name of the application"
  type        = string
  default     = "CloudCart"
}
