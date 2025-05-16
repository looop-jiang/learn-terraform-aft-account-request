module "test04" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jiang.li+test04@looop.co.jp"
    AccountName               = "test04-aft"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "jiang.li+test04@looop.co.jp"
    SSOUserFirstName          = "not"
    SSOUserLastName           = "user"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "test04"
}
