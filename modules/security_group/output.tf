output "web_sg" {
  # Mapping security group keys to their IDs for easier reference and usage
  value  = { for k, v in aws_security_group.web_sg : k => v.id }
}