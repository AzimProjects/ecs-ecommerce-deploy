resource "aws_ecs_task_definition" "ecommerce_task" {
  family                   = "ecommerce-task"
  container_definitions    = jsonencode([
    {
      name      = "ecommerce-container"
      image     = "${aws_ecr_repository.ecommerce_repo.repository_url}:latest"
      memory    = 512
      cpu       = 256
      essential = true
      portMappings = [{
        containerPort = 3000
        hostPort      = 3000
      }]
    }
  ])
}

resource "aws_ecs_service" "ecommerce_service" {
  name            = "ecommerce-service"
  cluster         = aws_ecs_cluster.ecommerce_cluster.id
  task_definition = aws_ecs_task_definition.ecommerce_task.arn
  desired_count   = 1
}
