resource "google_compute_address" "terraform_static_ip" {
  name = "terraform-assignment-static-ip"
  region = "us-central1"
}