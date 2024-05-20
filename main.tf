terraform {
  required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.53.0"
    }
  }
}

variable "application_credential_id" { }
variable "application_credential_secret" { }
variable "auth_url" { }

provider "openstack" {
  auth_url = var.auth_url
  application_credential_id = var.application_credential_id
  application_credential_secret = var.application_credential_secret
}

resource "openstack_compute_instance_v2" "flux-instance" {
  name            = "test-machine"
  image_name      = "rhcos-4.14"
  flavor_name       = "m1.small"
  security_groups = ["default"]

  network {
    name = "provider_net_cci_13"
  }
}
