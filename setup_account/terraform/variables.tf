variable "region" {
  type        = string
  default     = "us-east-1"
  description = "The AWS region to deploy resources"
}

variable "cluster_name" {
  type        = string
  default     = "mani-cluster"
  description = "The name of the EKS cluster"
}

variable "cluster_version" {
  type        = string
  default     = "1.33"
  description = "The version of the EKS cluster"
}