# ziyotek-2023-devops-terraform

TERRAFORM COMMANDS:

Terraform init
Terraform fmt
Terraform validate
Terraform plan
Terraform apply
Terrafom apply/destroy -auto-approve
terraform apply/destroy -target=<resource_name>.<local_name>
terraform refresh
------
terraform state commands:
terraform state rm
terraform import ( see terraform resource documentation )
terraform state list - what is managed by the state
terraform state mv

--------
remote state lock sequence:
1. Create manually a bucket to host your state.
2. add s3 backend config:
  backend "s3" {
    bucket  = "<your bucket>"
    key     = "ec2-examle/devops/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
3. Create dynamodb table
4. add the table to the backend config:
   dynamodb_table = "terraform-lock"
5. run 'terraform init -reconfigure

----------------------