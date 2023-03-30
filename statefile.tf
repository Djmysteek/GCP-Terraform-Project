resource "google_storage_bucket" "terraform_assignment" {
    name = "mysteeks_terraform-assignment-bucket"
      location      = var.google_storage_bucket_location
     force_destroy = true
   public_access_prevention = "enforced"
   uniform_bucket_level_access = true
  }

terraform {
  backend "gcs" {
    bucket = "mysteeks_terraform-project-bucket"
    prefix = "terraform/state"
  }
}