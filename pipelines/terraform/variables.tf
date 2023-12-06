variable "parallels_key" {
  type = "string"
  sensitive = true
}

variable "github_org_name" {
  type = "string"
  sensitive = true
}

variable "github_token" {
  type      = "string"
  sensitive = true
}

variable "runner_name" {
  type    = "string"
  default = "mac_build_machine"
}

variable "host_remote_state_bucket" {
  type = "string"
}

variable "host_remote_state_key" {
  type = "string"
}

variable "host_remote_state_region" {
  type = "string"
}