/* Store the tf-state file in the remote s3 bucket */
/* Here we are using already existing s3 bucket and dynamo db table */
terraform {
  backend "s3" {
    bucket         = "remote--tfstate-bucket"
    key            = "dev/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "state-locking-table"
  }
}

