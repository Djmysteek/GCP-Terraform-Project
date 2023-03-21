
resource "google_storage_bucket" "terraform_project" {
  name          = "mysteek_terraform-project-bucket"
  location      = var.google_storage_bucket_location
  force_destroy = true
  public_access_prevention = "enforced"

  uniform_bucket_level_access = true
}