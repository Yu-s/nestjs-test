data "terraform_remote_state" "vpc" {
  backend = "local"

  config = {
    path = "../../../../generated/aws/vpc/ap-northeast-1/terraform.tfstate"
  }
}
