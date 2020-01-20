data "aws_organizations_organization" "example" {}

output "account_ids" {
  value = data.aws_organizations_organization.example.accounts[*].id
}

provider "aws" {
    version="2.45"
    region="eu-west-1"
}