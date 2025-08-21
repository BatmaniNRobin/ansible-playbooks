provider "aws" {
  region = var.region
}

# Optionally, configure the EKS cluster data source
data "aws_eks_cluster" "mani-cluster" {
  name = var.cluster_name
}


data "aws_eks_cluster_auth" "mani-cluster" {
  name = data.aws_eks_cluster.mani-cluster.name
}

terraform {
  backend "s3" {
    bucket         = "mani-cluster-tf-state-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tfstate-lock"
    encrypt        = true
  }
}