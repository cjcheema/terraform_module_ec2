module "ec2_ssm_provisioner" {
  source = "./modules/ssm"
  ssm_role_name         = var.ssm_role_name
  ssm_assume_role_json  = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Principal = {
        Service = "ec2.amazonaws.com"
      },
      Effect = "Allow"
    }]
  })
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = var.vpc_id
  web_sg_configs = var.web_sg_configs
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  instance_count        = var.instance_count
  ami_id                = var.ami_id
  instance_type         = var.instance_type   
  security_group_id     = module.security_group.web_sg.*.id
  instance_profile_name = module.ec2_ssm_provisioner.ssm_role_name
  key_name              = var.key_name
  instance_name         = var.instance_name
}