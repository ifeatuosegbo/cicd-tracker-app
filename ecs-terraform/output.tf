output "ecr_repository_url" {
  value       = aws_ecr_repository.ecr.repository_url
  description = "The URL of the ECR repository"
}

output "ecs_cluster_name" {
  value       = aws_ecs_cluster.cluster.name
  description = "The name of the ECS cluster"
}

output "ecs_service_name" {
  value       = aws_ecs_service.service.name
  description = "The name of the ECS service"
}

output "ecs_task_definition_name" {
  value       = aws_ecs_task_definition.task.family
  description = "The name of the ECS task definition"
}

output "ecs_task_execution_role_arn" {
  description = "The ARN of the ECS task execution role"
  value       = aws_iam_role.ecs_task_execution_role.arn
}
