provider "google" {
  version = "~> 2.19"
  project = var.project
  region  = var.region
}

module "storage-bucket" {
  source   = "SweetOps/storage-bucket/google"
  version  = "0.3.0"
  name     = "storage-bucket-alex"
  location = "europe-west1"
}

output storage-bucket_url {
  value = module.storage-bucket.url
}
