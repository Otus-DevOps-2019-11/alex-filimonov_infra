variable public_key_path {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable zone {
  description = "Zone for app instance"
  default     = "europe-west1"
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
variable instance_name {
    description = "Instance name"
}
variable reddit_app_ip {
  description = "reddit app ip"
  default     = "reddit-app-ip"
}
variable firewall_puma {
  description = "firewall_puma"
  default     = "allow-puma-default"
}
