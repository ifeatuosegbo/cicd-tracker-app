resource "aws_ecr_repository" "ecr" {
  name                 = "frontend"
  image_tag_mutability = "MUTABLE"
  force_delete         = true
  image_scanning_configuration {
    scan_on_push = false
  }

  encryption_configuration {
    encryption_type = "AES256"
  }

  tags = {
    Environment = "dev"
    Project     = "Full-stack-web-app"
  }
}