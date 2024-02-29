terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

#providers access and secret keys from your IAM user
provider "aws" {
  region     = "us-east-2"
  access_key = "youraccesskey"
  secret_key = "yoursecretkey"
}

#lets start with resources

#first generate an pem file which will help to login to your aws account
resource "tls_private_key" "mypem1" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

#generate key pair
resource "aws_key_pair" "mykeypair1" {
  key_name   = "mykey1"
  public_key = tls_private_key.mypem1.public_key_openssh
}

#saving private key in local file
resource "local_file" "file1" {
  content  = tls_private_key.mypem1.private_key_pem
  filename = "myfile1"
}

#creating an ec2 instance in aws
resource "aws_instance" "terrainstance" {
  ami           = "ami-02ca28e7c7b8f8be1"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.mykeypair1.key_name
  tags = {
    Name = "ranjith_instance"
  }
}
