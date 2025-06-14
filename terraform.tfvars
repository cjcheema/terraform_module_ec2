# This variable file defines the values for the variables used in the Terraform configuration.
# Ensure to replace the placeholder values with your actual AWS resources.
# The values provided here will be used to create EC2 instances, security groups, and SSM roles.
# Make sure to keep the variable names consistent with those defined in your Terraform configuration.
# This file should be placed in the same directory as your Terraform configuration files.
# You can run `terraform apply` to create the resources defined in your Terraform configuration using these variable values.

instance_count = 2
ami_id = "ami-0e35ddab05955cf57"  # Replace with your actual AMI ID
instance_type = "t3.nano"  # Replace with your desired instance type
key_name = "cjkeypair"  # Replace with your actual key pair name
ssm_role_name = "cj_ec2_ssm_role"  # Replace with your actual SSM role name
# ssm_assume_role_json = jsonencode({
#     Version = "2012-10-17",
#     Statement = [{
#       Action = "sts:AssumeRole",
#       Principal = {
#         Service = "ec2.amazonaws.com"
#       },
#       Effect = "Allow"
#     }]
#   })

web_sg_configs = { # Security group configurations
  web_sg = {
    name = "HTTP-sg"
    port = 80
  }
    ssh_sg = {
        name = "ssh-sg"
        port = 22
    }
}
instance_name = "cj-web"  # Base name for the EC2 instances


