variable zone {
  description = "Zone"
  default = "ru-central1-a"
}
variable service_account_id{
  description = "Path to the service acc key used for"
}
variable subnet_id {
  description = "Subnet"
}
variable network_id {
  description = "Network"
}
variable "network_policy_provider" {
  description = "Network policy provider for the cluster. Possible values: CALICO."

  type = string

  default = null
}