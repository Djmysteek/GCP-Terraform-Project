provider "google" {
  project = "Terraform-Project"
  region  = "us-central1"
  zone = "us-central1-a"
}

resource "google_storage_bucket" "terraform_project" {
  name          = "terraform-project-bucket"
  location      = "US"
  force_destroy = true
  public_access_prevention = "enforced"

  uniform_bucket_level_access = true
}