# VPC values
region            = "ap-south-1"
vpc_cidr          = "150.45.0.0/16"
instance_tenancy  = "default"
vpc_name          = "TT-VPC"
subnet01_cidr     = "150.45.0.0/24"
availability_zone1 = "ap-south-1a"
subnet01_name     = "TT_Subnet01"
subnet02_cidr     = "150.45.10.0/24"
availability_zone2 = "ap-south-1b"
subnet02_name     = "TT_Subnet02"
igw_name          = "TT_IGW"
route_cidr        = "10.0.1.0/24"
route_table_name  = "TT_RT"

#ECS values
ecs_cluster_name = "TT-Cluster"
taskdef_family_name = "TT-TaskDef"
taskdef_network_mode_name = "awsvpc"
taskdef_cpu_capacity = 256
taskdef_memory_capacity = 512
 container_name = "TT-Container"
 container_image = "nginx:latest"
 container_listener_port = 80
 container_host_port = 80
 container_protocol = "tcp" 


