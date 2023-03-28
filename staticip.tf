resource "google_compute_address" "gcp_static_ip" {
  name = "terraform-project-static-ip"
  region = "us-central1"
}