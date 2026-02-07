module "sandbox_demo_vpc_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "keneaft+sandbox-vpc-test-22@gmail.com" # Must be unique
    AccountName               = "sandbox-vpc-demo-account-22"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "keneaft@gmail.com"
    SSOUserFirstName          = "Kene"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    Environment = "Testing"
    VPC_Demo    = "True"
  }

  change_management_parameters = {
    change_requested_by = "kene.aft"
    change_reason       = "Testing automatic VPC deployment via AFT customizations"
  }

  custom_fields = {
    demo_status = "active"
  }

  account_customizations_name = "sandbox"
}

module "sandbox_demo_vpc_account2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "keneaftsandbox+vpc-test-23@gmail.com" # Must be unique
    AccountName               = "sandbox-vpc-demo-account-23"
    ManagedOrganizationalUnit = "Sandboxx"
    SSOUserEmail              = "keneaft@gmail.com"
    SSOUserFirstName          = "Kene"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    Environment = "Testing"
    VPC_Demo    = "True"
  }

  change_management_parameters = {
    change_requested_by = "kene.aft"
    change_reason       = "Testing automatic VPC deployment via AFT customizations"
  }

  custom_fields = {
    demo_status = "active"
  }

  account_customizations_name = "sandbox"
}