provider "aws" {
  region = "us-east-1"
}

resource "aws_ecs_cluster" "ecommerce_cluster" {
  name = "ecommerce-cluster"
}
