resource "aws_security_group" "ecs_service_sg" {
  name_prefix = "ecs-service-sg"
  description = "Security group for ECS service"
  vpc_id      = "vpc-29f0c052" 

  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.alb_sg.id]
    cidr_blocks     = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}