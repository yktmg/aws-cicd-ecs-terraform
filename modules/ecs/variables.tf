variable "project_name" {
  description = "プロジェクト名"
  type        = string
}

variable "vpc_id" {
  description = "VPCのID"
  type        = string
}

variable "subnet_ids" {
  description = "ECSタスクを配置するプライベートサブネットのIDリスト"
  type        = list(string)
}

variable "alb_target_group_arn" {
  description = "ALBターゲットグループのARN"
  type        = string
}

variable "alb_security_group_id" {
  description = "ALBセキュリティグループのID"
  type        = string
}

variable "ecr_repository_uri" {
  description = "ECRリポジトリのURI"
  type        = string
}