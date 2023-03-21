provider "google" {
  project = "My First Project"
  region  = "us-central1"
  zone = "us-central1-a"
}

resource "google_compute_instance" "my_instance" {
  name         = "gcp-instance"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
  }


  metadata_startup_script = "echo 'Hello, World!' > index.html && python -m SimpleHTTPServer 80"
}