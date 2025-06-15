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

variable "security_group_id" {
  description = "The ID of the security group to associate with the EC2 instance"
  type        = string
}

# variable "security_group_id" {
#   type = map(string)
# }

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