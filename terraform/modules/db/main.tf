resource "google_compute_instance" "db" {
  name = var.instance_name
  machine_type = "g1-small"
  zone = var.zone
    tags = ["reddit-db"]
    boot_disk {
    initialize_params {
      image = var.db_disk_image
    }
  }

  metadata={
    ssh-keys = "appuser:${file(var.public_key_path)}"
  }

  network_interface {
    network    = "default"
    subnetwork = "default"
    access_config {}
  }


}

resource "google_compute_firewall" "firewall_mongo" {
  name = var.firewall_mongo
  network = "default"
  allow {
    protocol = "tcp"
    ports = ["27017"]
  }
  target_tags = ["reddit-db"]
  source_tags = ["reddit-app"]
}
