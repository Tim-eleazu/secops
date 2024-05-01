# # terraform {
# #   backend "s3" {
# #     bucket         = "my-ews-baket1"
# #     region         = "us-east-1"
# #     key            = "End-to-End-Kubernetes-DevSecOps-Tetris-Project/EKS-TF/terraform.tfstate"
# #     dynamodb_table = "Lock-Files"
# #     encrypt        = true
# #   }
# #   required_version = ">=0.13.0"
# #   required_providers {
# #     aws = {
# #       version = ">= 2.7.0"
# #       source  = "hashicorp/aws"
# #     }
# #   }
# # } 

# terraform {
#  backend "s3" {
#     bucket = "my-terraform-state-ghm"
#     key    = "prod/aws_infra"
#     region = "us-east-1"

#     dynamodb_table = "terraform-locks"
#     encrypt        = true
#   required_version = ">=0.13.0"
#   required_providers {
#     aws = {
#       version = ">= 2.7.0"
#       source  = "hashicorp/aws"
#       }
#    }
#   } 
# } 

terraform {
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket         = "my-terraform-state-ghm"
    key            = "prod/aws_infra"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
