# This will output the URL under which your application is reachable
output "alb_hostname" {
  value = aws_alb.main.dns_name
}

