
resource "google_storage_bucket" "terraform_project" {
  name          = "mystee_terraform-project-bucket"
  location      = "US"
  force_destroy = true
  public_access_prevention = "enforced"

  uniform_bucket_level_access = true
}