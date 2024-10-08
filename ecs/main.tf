terraform {
  required_version = "1.9.7"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  } 
}

provider "aws" {
  region = var.region  
}

resource "aws_ecs_cluster" "config_ecs_cluster" {
  name = var.ecs_cluster_name
}

resource "aws_ecs_task_definition" "config_ecs_taskdef" {
  family                   = var.taskdef_family_name
  network_mode             = var.taskdef_network_mode_name
  requires_compatibilities = ["FARGATE"]
  cpu                      = var.taskdef_cpu_capacity
  memory                   = var.taskdef_memory_capacity
 
  container_definitions = jsonencode([
  {
    name      = var.container_name
    image     = var.container_image
    essential = true
    portMappings = [
      {
        containerPort = var.container_listener_port
        hostPort      = var.container_host_port
        protocol      = var.container_protocol
      }
    ]
  }
]) 
}

