data "aws_organizations_organization" "example" {}

output "account_ids" {
  value = data.aws_organizations_organization.example.accounts[*].id
}
