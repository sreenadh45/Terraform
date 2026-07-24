terraform {
  backend "s3" {
    bucket = "my-terraform-bucket-45"
    key    = "state/terraform.tfstate"
    region = "us-east-2"
    use_lockfile = true #this will prevent concurrent modifications to the state file
  }
}