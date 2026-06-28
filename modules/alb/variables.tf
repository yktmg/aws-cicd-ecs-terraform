variable "project_name" {
  description = "プロジェクト名"
  type        = string
}

variable "vpc_id" {
  description = "VPCのID"
  type        = string
}

variable "subnet_ids" {
  description = "ALBを配置するパブリックサブネットのIDリスト"
  type        = list(string)
}