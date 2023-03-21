variable "project" {
    default = "terraform-project-381302"
  
}

variable "region" {
  default ="us-central1"
}
  
  variable "zone" {
    default = "us-central1-a"
  }

variable "machine_type" {
  default = "e2-micro"
}

variable "boot_disk_image" {
  default = "debian-cloud/debian-11"
}

variable "google_storage_bucket_location" {
  default = "US"
}