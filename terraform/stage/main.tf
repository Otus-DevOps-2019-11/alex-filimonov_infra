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
  public_key_path = var.public_key_path
  zone            = var.zone
  app_disk_image  = var.app_disk_image
  instance_name   = "reddit-app-stage-app"
  reddit_app_ip   = "reddit-app-ip-stage"
  firewall_puma   = "allow-puma-default-stage"
}

module "db" {
  source          = "../modules/db"
  public_key_path = var.public_key_path
  zone            = var.zone
  db_disk_image   = var.db_disk_image
  instance_name   = "reddit-app-stage-db"
  firewall_mongo  = "allow-mongo-default-stage"
}

module "vpc" {
  source             = "../modules/vpc"
  source_ranges      = ["0.0.0.0/0"]
  name_firewall_role = "default-allow-ssh-stage"
}
