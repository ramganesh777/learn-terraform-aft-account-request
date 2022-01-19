module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ramgcttest10@gmail.com"
    AccountName               = "sandboxnew"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "ramgcttest10@gmail.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "New"
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
    change_requested_by = "Ramganesh Palpandiraj"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
