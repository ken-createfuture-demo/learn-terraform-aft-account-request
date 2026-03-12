module "aft_test_account" {
  # Standard AFT account request module
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    # Unique email for the new AWS account
    AccountEmail = "keneaft+success-02-07@gmail.com"

    # Account name in AWS Organizations
    AccountName = "aft-gated-test-account"

    # Target OU - must exist in Control Tower
    ManagedOrganizationalUnit = "Sandbox"

    # Initial SSO user details
    SSOUserEmail     = "keneaft@gmail.com"
    SSOUserFirstName = "Kene"
    SSOUserLastName  = "AFT"
  }

  account_tags = {
    # Standard account tags
    Name        = "aft-gated-test-account"
    Environment = "sandbox"
    Owner       = "kene.aft"
    Project     = "aft-demo"

    # Demo-specific tags
    VPC_Demo = "True"
    Gated    = "True"
  }

  change_management_parameters = {
    # Audit trail
    change_requested_by = "kene.aft"
    change_reason       = "Testing end-to-end flow with Manual Approval gates"
  }

  custom_fields = {
    # Extra metadata for custom logic
    demo_status     = "active"
    account_type    = "sandbox"
    network_profile = "vpc-demo"
  }

  # Links to the account-specific customisation set
  account_customizations_name = "sandbox"

  account_customizations_parameters = {
    # Optional custom inputs
    enable_vpc_demo   = "true"
    enable_gated_flow = "true"
  }
}
