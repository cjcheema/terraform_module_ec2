output "sgs" {
  value = aws_security_group.web_sg.*.id
}