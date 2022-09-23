## Terraform Quick notes -
Reference: [Terraform Registry](https://registry.terraform.io/)

#### Type of terraform providers
1. Official: Managed by terraform.
2. Verified: Managed by terraform partners.
3. Community: Managed by users.

#### Various files can be created
1. main.tf
    > Main configuration file containing resource definition.
2. variables.tf
    > Contains variable declarations.
3. outputs.tf
    > Contains outputs from resources.
4. provider.tf
    > Contains provider derfinition.

#### Terraform Commands
1. terraform init 
    > Downloads the plugins into `.terraform` directory.
2. terraform plan
    > Verify the action which will be performed by terraform.
3. terraform apply
    > Perform the defined changes.
4. terraform destroy
    > Delete allthe created  resources.
5. --auto-approve
    > Don't prompt for confirmation.
6. terraform output
    > Display output variables and values.


