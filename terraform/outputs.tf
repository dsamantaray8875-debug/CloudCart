output "project_name" {
  description = "CloudCart project name"
  value       = var.project_name
}

output "aws_region" {
  description = "Configured AWS region"
  value       = var.aws_region
}

output "common_tags" {
  description = "Common tags for future resources"
  value       = local.common_tags
}
