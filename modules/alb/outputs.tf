output "alb_dns_name" {
  description = "ALBのDNS名（ブラウザでアクセスするURL）"
  value       = aws_lb.main.dns_name
}

output "target_group_arn" {
  description = "ターゲットグループのARN"
  value       = aws_lb_target_group.main.arn
}

output "security_group_id" {
  description = "ALBセキュリティグループのID"
  value       = aws_security_group.alb.id
}