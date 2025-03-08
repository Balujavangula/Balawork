terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "mypcgsg"
    key            = "pcg/test/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
#