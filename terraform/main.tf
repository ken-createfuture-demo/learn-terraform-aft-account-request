module "aft_test_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "keneaft+success-02-07@gmail.com" # Use a fresh alias
    AccountName               = "aft-gated-test-account"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "keneaft@gmail.com"
    SSOUserFirstName          = "Kene"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "VPC_Demo" = "True"
    "Gated"    = "True"
  }

  change_management_parameters = {
    change_requested_by = "kene.aft"
    change_reason       = "Testing end-to-end flow with Manual Approval gates"
  }

  custom_fields = {
    demo_status = "active"
  }

  account_customizations_name = "sandbox"
}