variable "project_name" {
  description = "プロジェクト名"
  type        = string
}

variable "aws_region" {
  description = "AWSリージョン"
  type        = string
}

variable "ecr_repository_uri" {
  description = "ECRリポジトリのURI"
  type        = string
}

variable "ecs_cluster_name" {
  description = "ECSクラスター名"
  type        = string
}

variable "ecs_service_name" {
  description = "ECSサービス名"
  type        = string
}

variable "github_owner" {
  description = "GitHubのユーザー名"
  type        = string
}

variable "github_repo" {
  description = "GitHubのリポジトリ名"
  type        = string
}

variable "github_branch" {
  description = "デプロイ対象のブランチ名"
  type        = string
}
