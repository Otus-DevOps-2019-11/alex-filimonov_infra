resource "google_compute_instance" "app" {
  name = var.instance_name
  machine_type = "g1-small"
  zone = var.zone
  tags = ["reddit-app"]
  boot_disk {
    initialize_params { image = var.app_disk_image }
  }
  network_interface {
    network = "default"
    subnetwork = "default"
    access_config {
      nat_ip = google_compute_address.app_ip.address
    }
  }
  metadata={
    ssh-keys = "appuser:${file(var.public_key_path)}"
  }
}

resource "google_compute_address" "app_ip" {
  name = var.reddit_app_ip
}

resource "google_compute_firewall" "firewall_puma" {
  name = var.firewall_puma
  network = "default"
  allow {
    protocol = "tcp"
    ports = ["9292"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags = ["reddit-app"]
}
