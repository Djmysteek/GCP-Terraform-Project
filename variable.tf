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
  default = "ubuntu-os-cloud/ubuntu-2004-lts"
}

variable "google_storage_bucket_location" {
  default = "US"
}

variable "google_compute_address" {
  default = {

    name = "terraform_project_static_ip"
    region = "us-central1"
} 
}




variable "username" {
  default = "SYSTEM"
}

variable "private_key_path" {
  default = "C:/Users/djmys/.ssh/id_rsa"
}

variable "host" {
  default = "google_compute_address.gcp_static_ip"
  
}