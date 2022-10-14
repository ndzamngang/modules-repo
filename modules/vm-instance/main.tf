resource "google_compute_firewall" "default" {
  name    = "${var.name}-firewall1"
  network = google_compute_network.default.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000", "22"]
  }

  source_tags = ["web"]
}

resource "google_compute_network" "default" {
  name = "${var.name}-network"
}
    




resource "google_service_account" "default" {
  account_id   = "${var.name}-sa"
  display_name = "${var.name}-sa"
}

resource "google_compute_instance" "default" {
  name         = "${var.name}-instance1"
  machine_type = var.instance_type
  zone         = var.instance_zone

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = var.instance_image
    }
  }

  // Local SSD disk
  # scratch_disk {
  #   interface = "SCSI"
  # }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    enable-oslogin = "TRUE" 
  }

  # metadata_startup_script = "echo hi > /test.txt"

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}