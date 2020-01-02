data "terraform_remote_state" "alb" {
  backend = "local"

  config = {
    path = "../../../../generated/aws/alb/ap-northeast-1/terraform.tfstate"
  }
}

data "terraform_remote_state" "sg" {
  backend = "local"

  config = {
    path = "../../../../generated/aws/sg/ap-northeast-1/terraform.tfstate"
  }
}

data "terraform_remote_state" "subnet" {
  backend = "local"

  config = {
    path = "../../../../generated/aws/subnet/ap-northeast-1/terraform.tfstate"
  }
}
