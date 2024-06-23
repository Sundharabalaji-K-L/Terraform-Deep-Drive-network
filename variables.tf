variable "region" {
  type        = string
  description = "AWS Region to use"
  default     = "us-east-1"
}

variable "prefix" {
  type        = string
  description = "Prefix to all resources in this module"
}

variable "cidr_block" {
  type        = string
  description = "CIDR block for the VPC"

}

variable "environment" {
  type        = string
  description = "(optional) environment to all the resources need to be created"

}

variable "public_subnets" {
  type        = map(string)
  description = "map of public subnets to create"

}

variable "billing_code" {
  type = string
  description = "Requrired billing code"
} 