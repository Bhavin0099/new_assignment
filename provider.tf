provider "aws" {
  region = var.root_region
}

provider "aws" {
  alias  = "jenkins"
  region = "ap-south-1"
}

provider "aws" {
  alias  = "peer"
  region = "ap-southeast-1"
}
