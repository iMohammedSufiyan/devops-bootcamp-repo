# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "5.81.0"
#     }
#   }
# }
# provider "aws" {
#   region     = "ap-south-1"
#   access_key = ""
#   secret_key = ""
# }
#
# resource "aws_instance" "qa-ec2-env" {
#   ami           = var.ami_id
#   instance_type = var.instance_type
#   security_groups = ["qa-sg"]
#
#   tags = {
#     Name = "qa-env"
#   }
# }
#
# resource "aws_security_group" "qa-sg" {
#   name        = "qa-sg"
#   description = "Allow SSH, HTTP, and Jenkins ports"
#
#   ingress {
#     from_port = 22
#     to_port   = 22
#     protocol  = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#
#   ingress {
#     from_port = 8080
#     to_port   = 8080
#     protocol  = "http"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#
#   ingress {
#     from_port = 8081
#     to_port   = 8081
#     protocol  = "http"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#
#   egress {
#     from_port = 0
#     to_port   = 0
#     protocol  = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }