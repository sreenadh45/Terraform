terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.50.0"
    }
  }
}
#take it from terraform registry the above line is used to specify the provider source and version constraint. The "hashicorp/aws" indicates that the AWS provider is being used, and "~>6.50.0" specifies that any version in the 6.x series that is greater than or equal to 6.50.0 but less than 7.0.0 is acceptable.

provider "aws" {
    region = "us-east-2"
}

provider "aws" {
    region = "ap-south-1"
    alias  = "mumbai"
}