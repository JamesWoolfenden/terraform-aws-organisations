data "aws_organizations_organization" "example" {}
output "account_ids" {
  description = "IDs of the accounts in the organization"
  value = data.aws_organizations_organization.example.accounts[*].id
}
