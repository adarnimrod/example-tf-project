provider "aws" {
  default_tags {
    tags = {
      Environment = local.env
      # Easy to track down which module created a resource.
      Module      = local.module
    }
  }
}
