resource "google_storage_bucket" "Terraform-Project" {
  name          = "terraform-project-bucket"
  location      = "US"
  force_destroy = true
  public_access_prevention = "enforced"

  uniform_bucket_level_access = true
}