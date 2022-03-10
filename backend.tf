/*# Backend must remain commented until the Bucket
 and the DynamoDB table are created. 
 After the creation you can uncomment it,
 run "terraform init" and then "terraform apply" */

terraform {
  backend "s3" {
    bucket         = "igoreul-terraform-state-backend"
    key            = "terraform.tfstate"
    region         = "sa-east-1"
    dynamodb_table = "terraform_state"
  }
}