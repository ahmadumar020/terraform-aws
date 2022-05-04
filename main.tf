/*
Aim of this main.tf file is to contain resources, such as aws_vpc, that I am declaring for Terraform to configure.
Will try keep the file as stateless as possible (no hard coded information, secrets, or addresses)
*/

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.5.0"
    }
  }
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