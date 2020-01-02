data "terraform_remote_state" "ecs" {
  backend = "local"

  config = {
    path = "../../../../generated/aws/ecs/ap-northeast-1/terraform.tfstate"
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
