# locals {
#   builder_name = "mac-${var.runner_name}"
#   host         = data.terraform_remote_state.host.outputs.parallels-desktop_host[0]
#   api_key      = data.terraform_remote_state.host.outputs.parallels-desktop_api_key[0]
# }


# data "parallels-desktop_vm" "mac_builder_base" {
#   host = local.host

#   filter {
#     field_name       = "name"
#     value            = "macos14-github-actions-runner-base"
#     case_insensitive = true
#   }
# }

# resource "parallels-desktop_clone_vm" "mac_builder" {
#   count = length(data.parallels-desktop_vm.mac_builder_base.machines)

#   authenticator {
#     api_key = local.api_key
#   }

#   host       = local.host
#   name       = local.builder_name
#   owner      = "ec2-user"
#   base_vm_id = data.parallels-desktop_vm.mac_builder_base.machines[count.index].id
#   path       = "/Users/ec2-user/Parallels"

#   config {
#     start_headless = true
#   }

#   force_changes = true

#   post_processor_script {
#     retry {
#       attempts              = 4
#       wait_between_attempts = "10s"
#     }
#     inline = [
#       "curl -o /tmp/install-runner.sh https://raw.githubusercontent.com/Parallels/prlctl-scripts/main/github/actions-runner/mac/install-runner.sh",
#       "chmod +x /tmp/install-runner.sh",
#       "sudo /tmp/install-runner.sh -o ${var.github_org_name} -t ${var.github_token} -p /opt -u parallels -n ${local.builder_name} -l macos,macos14,xcode",
#     ]
#   }

#   on_destroy_script {
#     inline = [
#       "curl  -o /tmp/remove-runner.sh https://raw.githubusercontent.com/Parallels/prlctl-scripts/main/github/actions-runner/mac/remove-runner.sh",
#       "chmod +x remove-runner.sh",
#       "sudo /tmp/remove-runner.sh -o ${var.github_org_name} -t ${var.github_token}  -p /opt -u parallels",
#     ]
#   }
# }