variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
}

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