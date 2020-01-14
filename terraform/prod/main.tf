terraform {
  # Версия terraform
  required_version = "0.12.19"
}

provider "google" {
  version = "2.15"
  project = var.project
  region  = var.region
}

module "app" {
  source          = "../modules/app"
  instance_name   = "reddit-app-prod-app"
  public_key_path = var.public_key_path
  zone            = var.zone
  app_disk_image  = var.app_disk_image
  reddit_app_ip   = "reddit-app-ip-prod"
  firewall_puma   = "allow-puma-default-prod"
}

module "db" {
  source          = "../modules/db"
  instance_name   = "reddit-app-prod-db"
  public_key_path = var.public_key_path
  zone            = var.zone
  db_disk_image   = var.db_disk_image
  firewall_mongo  = "allow-mongo-default-prod"
}

module "vpc" {
  source             = "../modules/vpc"
  name_firewall_role = "default-allow-ssh-prod"
  source_ranges      = ["0.0.0.0/0"]
}
