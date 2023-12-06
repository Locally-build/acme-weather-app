data "terraform_remote_state" "host" {
  backend = "s3"
  config = {
    bucket = var.host_remote_state_bucket
    key    = var.host_remote_state_key
    region = var.host_remote_state_region
  }
}