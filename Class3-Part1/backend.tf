terraform {
  backend "s3" {
    bucket = "kaizen-aitymb"
    key    = "kaizen/terraform.tfstate"
    region = "us-east-1"
  }
}
