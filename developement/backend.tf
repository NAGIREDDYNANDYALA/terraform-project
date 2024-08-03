terraform {
  backend "s3" {
    bucket = "terraform-state-s3tf"
    key = "dev-tf/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-dynamodb"
  }
}