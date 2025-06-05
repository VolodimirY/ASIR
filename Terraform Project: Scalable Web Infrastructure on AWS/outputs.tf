output "load_balancer_dns_name" {
  description = "Your load balancer DNS"
  value       = aws_lb.web_lb.dns_name
}
