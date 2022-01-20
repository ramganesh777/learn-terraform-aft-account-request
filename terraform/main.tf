module "sandbox_account_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ramgcttest9@gmail.com"
    AccountName               = "sandboxnew"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "ramgcttest9@gmail.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "New"
  }

  
  account_tags = {
    "ABC:Owner"       = "ramgcttest9@gmail.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }  

  change_management_parameters = {
    change_requested_by = "Ramganesh Palpandiraj"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
  
module "sandbox_account_02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "ramgcttest10@gmail.com"
    AccountName  = "sandboxfix"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "ramgcttest10@gmail.com"
    SSOUserFirstName = "ram"
    SSOUserLastName  = "yash"
  }

  account_tags = {
    "ABC:Owner"       = "ramgcttest10@gmail.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "Ramg"
    change_reason       = "testing the account vending process"
  }
  
  account_customizations_name = "sandbox"
}


