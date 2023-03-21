provider "google" {
  project = "var.project"
  region  = "var.region"
  zone = "var.zone"
}

resource "google_compute_instance" "terraform" {
  name         = "terraform-instance"
  machine_type = "var.machine_type"

  boot_disk {
    initialize_params {
      image = "var.boot_disk_image"
    }
  }
  network_interface {
    # A default network is created for all GCP projects
    network = "default"

}
}