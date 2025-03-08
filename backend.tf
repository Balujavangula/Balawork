terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "pcg-tf-state"
    key            = "pcg/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
#