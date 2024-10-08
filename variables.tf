#Global variables
variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
}

# VPC variables
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "instance_tenancy" {
  description = "The tenancy option for instances"
  type        = string
  default     = "default"
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "subnet01_cidr" {
  description = "CIDR block for the first subnet"
  type        = string
}

variable "subnet02_cidr" {
  description = "CIDR block for the second subnet"
  type        = string
}

variable "availability_zone1" {
  description = "Availability zone for the first subnet"
  type        = string
}

variable "availability_zone2" {
  description = "Availability zone for the second subnet"
  type        = string
}

variable "subnet01_name" {
  description = "Name of the first subnet"
  type        = string
}

variable "subnet02_name" {
  description = "Name of the second subnet"
  type        = string
}

variable "igw_name" {
  description = "Name of the internet gateway"
  type        = string
}

variable "route_cidr" {
  description = "CIDR block for route"
  type        = string
}

variable "route_table_name" {
  description = "Name of the route table"
  type        = string
}


#ECS Vriables 
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
     