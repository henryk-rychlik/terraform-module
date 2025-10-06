variable "name" {}
#variable "attribute" {}

data "tfe_organization" "test-organization" {
  name = "hrychlik"
  #  email = "admin@company.com"
}

resource "tfe_workspace" "test" {
  name         = var.name
  organization = data.tfe_organization.test-organization.name
  #  tag_names    = [ var.attribute ]
}

