data "terraform_remote_state" "sg" {
  backend = "local"

  config = {
    path = "../../../../generated/aws/sg/ap-northeast-1/terraform.tfstate"
  }
}
