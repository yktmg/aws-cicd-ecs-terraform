variable "aws_region" {
  description = "AWSリージョン"
  type        = string
}

variable "project_name" {
  description = "プロジェクト名（リソース名のプレフィックスに使用）"
  type        = string
}

variable "vpc_cidr" {
  description = "VPCのCIDRブロック"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "パブリックサブネットのCIDRブロック一覧"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "プライベートサブネットのCIDRブロック一覧"
  type        = list(string)
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
