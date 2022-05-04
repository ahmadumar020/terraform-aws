terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.5.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_budgets_budget" "limit-5" {
  name              = "monthly-demo-budget"
  budget_type       = "COST"
  limit_amount      = "5.0"
  limit_unit        = "USD"
  time_unit         = "MONTHLY"
  time_period_start = "2022-05-03_00:01"
}

# resource "aws_vpc" "demo-vpc" {}