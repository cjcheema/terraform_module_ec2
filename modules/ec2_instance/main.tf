resource "aws_instance" "webvm" {
  count                  = var.instance_count  
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  security_groups        = [var.security_group_id]
  iam_instance_profile   = var.instance_profile_name
  key_name               = var.key_name
  tags = {
    Name = "${var.instance_name}-${count.index + 1}"
  }
}
