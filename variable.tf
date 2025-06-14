variable "ssm_role_name" {
  description = "The name of the IAM role for SSM"
  type        = string  
}
variable "ssm_assume_role_json" {
  description = "The assume role policy document for SSM"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC where the security groups will be created."
  type        = string
  default = null
}

variable "web_sg_configs" {
  description = "Map of security group configurations."
  type        = map(object({
    name = string
    port = number
  }))
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number  
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance"
  type        = string
}

variable "instance_profile_name" {
  description = "The name of the IAM instance profile to associate with the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "The name of the key pair to use for SSH access to the EC2 instance"
  type        = string
}

variable "instance_name" {
  description = "The base name for the EC2 instance"
  type        = string
}