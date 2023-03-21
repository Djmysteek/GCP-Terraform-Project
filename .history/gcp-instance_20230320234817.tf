provider "google" {
  project = "terraform-project-381302"
  region  = "us-central1"
  zone = "us-central1-a"
}

resource "google_compute_instance" "terraform" {
  name         = "terraform-instance"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    # A default network is created for all GCP projects
    network = "default"

}
}