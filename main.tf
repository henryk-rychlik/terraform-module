variable "name" {}

resource "null_resource" "cluster" {}

data "tfe_organization" "test-organization" {
  name  = "hrychlik"
#  email = "admin@company.com"
}

resource "tfe_workspace" "test" {
  name         = "my-workspace-name"
  organization = data.tfe_organization.test-organization.name
  tag_names    = ["test", "app"]
}
