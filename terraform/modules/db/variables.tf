variable public_key_path {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable zone {
  description = "Zone for app instance"
  default     = "europe-west1"
}
variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}
variable instance_name {
    description = "Instance name"
}
variable firewall_mongo {
  description = "firewall_mongo"
  default     = "allow-mongo-default"
}
