variable "instance_name" {
  type = string
  description = "Name for virtual machine"
}

variable "application_credential_id" {
  type = string
  description = "Openstack application credential id"
}

variable "application_credential_secret" {
  type = string
  description = "Openstack application credential secret"
}

variable "auth_url" {
  type = string
  description = "Openstack auth url"
}