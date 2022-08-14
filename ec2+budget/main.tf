terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws" #where is AWS provider
      version = "~> 4.0"        #pessimistic constraint operator. >= 4.0, <5.0
    }
  }
}

provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "us-east-1"
}

resource "aws_instance" "example-ec2" {
  ami           = "ami-275f631"
  instance_type = "t2.micro"
}

resource "aws_budgets_budget" "test-budget" {
  name              = "monthly-budget"
  budget_type       = "COST"
  limit_amount      = "500.0"
  limit_unit        = "USD"
  time_unit         = "MONTHLY"
  time_period_start = "2022-08-01_00:01"
}