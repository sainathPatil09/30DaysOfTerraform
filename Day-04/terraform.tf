terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.21.0"
    }
  }

}

terraform {
  
  backend "s3" {
    bucket = "backend-bucket-wiings"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
    use_lockfile = true
    encrypt = true
  }
}