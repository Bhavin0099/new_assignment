provider "aws" {
  region = var.root_region
}

provider "aws" {
  alias  = "usw2"
  region = "ap-south-1"
}
