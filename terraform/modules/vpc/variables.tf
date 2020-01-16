variable source_ranges {
  description = "Allowed IP addresses"
  default = ["0.0.0.0/0"]
}
variable name_firewall_role {
  description = "Name role firewall"
  default = "default-allow-ssh"
}
