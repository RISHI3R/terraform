variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
}

variable "ecs_cluster_name" {
    description = "Name of the ECS Cluster"
    type = string
}

variable "taskdef_family_name" {
  description = "Family name of Task Definition"
  type = string
}

variable "taskdef_network_mode_name" {
  description = "Network mode of Task Definition"
  type = string
}

variable "taskdef_cpu_capacity" {
  description = "CPU capacity"
  type = number
}

variable "taskdef_memory_capacity" {
  description = "Storage/Memory Capacity"
  type = number
}
 
variable "container_name" {
  description = "Name of the container"
  type        = string
}

variable "container_image" {
  description = "Docker image for the container"
  type        = string
}

variable "container_listener_port" {
  description = "Port on which the container listens"
  type        = number
}

variable "container_host_port" {
  description = "Port on the host for container access"
  type        = number
}

variable "container_protocol" {
  description = "Network protocol used by the container"
  type        = string
}
     