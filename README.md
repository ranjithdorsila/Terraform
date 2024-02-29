# Terraform(IAC)
This repository contains various terraform files with various functionalities and practices

->"terraform init" - it will install all required plugins and generate .terraform folder and .terraform.lock.hcl file,  It captures the specific versions of providers and their dependencies required for your configuration. 
->"terraform plan" - Generates an execution plan, showing what actions Terraform will take to change the infrastructure to match the configuration.
->"terraform validate" - Validates the syntax and configuration of Terraform files without executing any actual changes.
->"terraform fmt" -  Rewrites Terraform configuration files to a canonical format and style.
->"terraform apply" - Applies the changes required to reach the desired state of the configuration. This command can create, update, or delete resources as necessary. it will create a terraform.tfstate file which contains the state of the configuration. sharing this file is not recommended because this file contains sensitive information.
->"terraform show" - Displays the current state or a saved plan in a human-readable format.
->"terraform destroy" - Destroys all the resources defined in the configuration, effectively tearing down the infrastructure.
it will create an terraform.tfstate.backup file, This file serves as a safety measure in case the main state file becomes corrupted or accidentally deleted.




