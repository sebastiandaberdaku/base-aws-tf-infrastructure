locals {
  company = "example"
  team = {
    name = "Data Engineering"
    id   = "de"
  }
}

module "remote_state_bootstrap" {
  source = "git@github.com:sebastiandaberdaku/terraform-modules.git//aws-terraform-remote-state"

  company     = local.company
  environment = var.environment
  team        = local.team

  admin_users = var.admin_users
}