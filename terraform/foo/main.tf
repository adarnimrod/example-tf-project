terraform {
  backend "s3" {
    bucket         = "tf-states"
    key            = "foo.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "tf-locks"
  }
}

locals {
  env    = terraform.workspace == "default" ? "prod" : terraform.workspace
  module = basename(abspath(path.root))
}
