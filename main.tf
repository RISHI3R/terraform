module "tiny_vpc" {
  source = "/root/terraform/vpc"
  region = var.region 
  vpc_cidr          = var.vpc_cidr  
  instance_tenancy  = var.instance_tenancy
  vpc_name          = var.vpc_name
  subnet01_cidr     = var.subnet01_cidr
  availability_zone1 = var.availability_zone1
  subnet01_name     = var.subnet01_name
  subnet02_cidr     = var.subnet02_cidr
  availability_zone2 = var.availability_zone2
  subnet02_name     = var.subnet02_name
  igw_name          = var.igw_name
  route_cidr        = var.route_cidr
  route_table_name  = var.route_table_name
}

module "tiny_ecs" {
  source = "/root/terraform/ecs"
  region = var.region 
  ecs_cluster_name = var.ecs_cluster_name
  taskdef_family_name = var.taskdef_family_name
  taskdef_network_mode_name = var.taskdef_network_mode_name
  taskdef_cpu_capacity = var.taskdef_cpu_capacity
  taskdef_memory_capacity = var.taskdef_memory_capacity
  container_name = var.container_name
  container_image = var.container_image
  container_listener_port = var.container_listener_port
  container_host_port = var.container_host_port
  container_protocol = var.container_protocol

}
   