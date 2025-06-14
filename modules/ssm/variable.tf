variable "ssm_role_name" {
  description = "The name of the IAM role for SSM"
  type        = string  
}
variable "ssm_assume_role_json" {
  description = "The assume role policy document for SSM"
  type        = string
}