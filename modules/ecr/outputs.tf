output "repository_uri" {
  description = "ECRリポジトリのURI"
  value       = aws_ecr_repository.main.repository_url
}

output "repository_name" {
  description = "ECRリポジトリ名"
  value       = aws_ecr_repository.main.name
}
